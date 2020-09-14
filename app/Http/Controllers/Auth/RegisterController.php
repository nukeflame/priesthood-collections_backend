<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Auth\RegisterRequest;
use App\User;
use App\Models\Order;
use App\Models\VerifyUser;
use Hash;
use App\Http\Resources\Auth\Auth as AuthResource;
use  App\Mail\Verification\CustomVerifyEmailQueued;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;
use Carbon\Carbon;
use Auth;

class RegisterController extends Controller
{
    public function register(RegisterRequest $request)
    {
        $user = new User();
        $user->firstname = $request->firstname;
        $user->lastname = $request->lastname;
        $user->email = $request->email;
        $user->access_portal = 0;
        $user->password = Hash::make($request->password);
        $user->save();
        $user->customers()->attach(4);//customer role
        //
        VerifyUser::create([
            'user_id' => $user->id,
            'token' => (string) Str::uuid(),
            '' => Carbon::now()->addMinutes(60),
            'otp' => mt_rand(100000, 999999)
        ]);
        
        Mail::to($user->email)->send(new CustomVerifyEmailQueued($user));
        // //
        // //auth token
        // $acess = $user->createToken('PriestHood Password Grant Client');
        // $accessToken = $acess->accessToken;
        // $token = $acess->token;
        // $expiresIn = time($token->expires_at);
        // $data = [
        //     'userData' =>
        //     'access_token' => $accessToken,
        //     'expires_in' => $expiresIn,
        // ];

        return  response()->json(new AuthResource($user));
    }

    public function authenticate(Request $request)
    {
        $verifyUser = VerifyUser::where('token', $request->token)->first();
        if (isset($verifyUser)) {
            $user = $verifyUser->user;
            return  response()->json(new AuthResource($user));
        }
    }

    public function updateOtp(Request $request, $id)
    {
        $verifyUser = VerifyUser::find($id);
        if (isset($verifyUser)) {
            $verifyUser->otp = mt_rand(100000, 999999);
            $verifyUser->update();
            $user = $verifyUser->user;
            // send mail
            Mail::to($user->email)->send(new CustomVerifyEmailQueued($user));

            return  response()->json(new AuthResource($user));
        }
    }

    public function verifyUser(Request $request)
    {
        $verifyUser = VerifyUser::where('token', $request->token)->first();
        if (isset($verifyUser)) {
            $user = $verifyUser->user;
            if ($user->hasVerifiedEmail()) {
                return response()->json('Your e-mail is verified', 422);
            } elseif ((int) $verifyUser->otp === (int) $request->otpNo) {
                $user->markEmailAsVerified();
                return  response()->json(Auth::login($user));
            }
        }
        
        // if (isset($verifyUser)) {
        //     $user = $verifyUser->user;
        //     return  response()->json(new AuthResource($user));
        // }
    }
}
