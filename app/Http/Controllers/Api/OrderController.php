<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\Order\OrderRequest;
use App\Models\Order;
use App\Models\Billing;
use App\User;
use Auth;
use App\Models\Shipping;
use App\Http\Resources\Order\Order as OrderResource;
use App\Http\Resources\Order\OrderCollection;
use Illuminate\Support\Facades\Http;
use Carbon\Carbon;
use App\Models\Cartlist;
use App\Http\Requests\Order\MpesaRequest;
use App\Http\Resources\Cartlist\CartlistCollection;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $orders = Order::orderBy('created_at', 'desc')->get();
        return new OrderCollection($orders);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(OrderRequest $request)
    {
        $order = new Order();
        if ($request->addressDetails) {
            $order->order_no = mt_rand(100000000, 999999999);
            $order->total = 0;
            $order->order_status_id = 1;
            $order->customer_id = Auth::id();
            $order->shipping_id = 0;
            $order->billing_id = 0;
            $order->save();
        }
        return new OrderResource($order);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        if ($id) {
            $order = Order::where('order_no', $id)->first();
            if (empty($order)) {
                return;
            }
            return new OrderResource($order);
        }
    }

    /**
    * Display the specified resource.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
    public function showOrder(Request $request)
    {
        $auth = Auth::user();
        if ($auth->email === $request->userEmail) {
            $orders = Order::where('customer_id', $auth->id)->orderBy('created_at', 'desc')->get();
            return new OrderCollection($orders);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function authOrder()
    {
        $auth = Auth::user();
        if ($auth) {
            $order = Order::where('customer_id', $auth->id)->latest()->first();
            $cartlist = Cartlist::where(['userId' => $auth->id, 'processed' => 1])->latest()->get();
            return  response()->json(['order' =>  new OrderResource($order), 'cartlist' => new CartlistCollection($cartlist)]);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if ($request->updateOrder) {
            //update order
            return response()->json($request->all());
        } else {
            // $shipping = new Shipping();
            // $shipping->shipping_method = $request->shippingMethod;
            // $shipping->region = $request->pickRegion;
            // $shipping->city = $request->pickCity;
            // $shipping->subtotal_amount = $request->subtotalAmount;
            // $shipping->shipping_amount = $request->shippingMethod;
            // $shipping->total_amount = $request->totalAmount;
            // $shipping->save();
            
            // //create new order
            // $order = new Order();
            // $order->order_no = str_pad(count(Order::all()) + 1, 6, "0", STR_PAD_LEFT);
            // $order->total = 0;
            // $order->status = 2;
            // $order->customer_id = Auth::id();
            // $order->shipping_id = 0;
            // $order->billing_id = 0;
            // $order->delivery_address = $request->deliveryAddress;
            // $order->firstname = ucfirst($request->firstname);
            // $order->lastname = ucfirst($request->lastname);
            // $order->mobile_no = $request->mobileNo;
            // $order->other_mobile_no	 = $request->otherMobileNo ? $request->otherMobileNo : null;
            // $order->state_region_id = $request->stateRegion;
            // $order->city_id = $request->city;
            // $order->save();
            return response()->json($shipping);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        if (!$id) {
            return;
        }
        $orderIds = explode(',', $id);
        $orders = Order::findOrFail($orderIds);
        foreach ($orders as $d) {
            $d->delete();
            Shipping::where('id', $d->shipping_id)->delete();
            Billing::where('id', $d->billing_id)->delete();
        }
        
        return new OrderCollection($orders);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function makePayment(MpesaRequest $request)
    {
        //order status
        $order = Order::findOrFail($request->orderId);
        $order->order_status_id = 3;
        $order->update();
        $bill = Billing::find($order->billing_id);
        $bill->mobile_no  = $request->mpesaNo;
        $bill->update();

        //clear cartlist
        $cartlist = Cartlist::whereIn('id', $request->cartIds)->get();
        foreach ($cartlist as $cart) {
            $cart->processed = 1;
            $cart->update();
            $order->items()->attach($cart->id);
        }

        //proccesss mpesa transaction

        return response()->json(['order' => new OrderResource($order)]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function pakd(MpesaRequest $request)
    {
        $consumer_key = env('MPESA_APP_CONSUMER_KEY');
        $consumer_secret = env('MPESA_APP_CONSUMER_SECRET');
        $api_URL = env('MPESA_AUTH_API', null);
        $auth = "Basic " . base64_encode($consumer_key . ":" . $consumer_secret);
        //auth request
        try {
            $response_access = Http::withHeaders([
                'Basic' => '',
                'Authorization' => $auth
            ])->get($api_URL);
    
            if (!$response_access->successful()) {
                return;
            }
            //access token
            $tokenData = $response_access->json();
            // lipa na mpesa online
            $api_Mpesa = env('MPESA_STK_API', null);

            $timestamp='20'.date("ymdhis");
            $Business_short_code = "174379";
            $passkey = 'bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919';
            $password = base64_encode($Business_short_code . $passkey . $timestamp);
            $mobile_no = (int) $request->mpesaNo;
            $callback_url = "https://78d37159-bdb5-49f5-88b1-54b5a6f86546.mock.pstmn.io/mpesa";
           
            // env('MPESA_STK_CALLBACK_URL', null);
            // http://127.0.0.1:8001/api/stk_callback
            $AccountReference = 'Priesthood Collections';
            $TransactionDesc = 'Process Activation';
            // http post
            $client_mpesa = [
                'BusinessShortCode' => $Business_short_code,
                'Password' => $password,
                'Timestamp' => $timestamp,
                'TransactionType' => 'CustomerPayBillOnline',
                'Amount' => '1', //$request->totalPay
                'PartyA' => $mobile_no,
                'PartyB' => $Business_short_code,
                'PhoneNumber' => $mobile_no,
                'CallBackURL' => $callback_url,
                'AccountReference' => $AccountReference,
                'TransactionDesc' => $TransactionDesc
            ];
            $response_data = Http::withToken($tokenData['access_token'])->post($api_Mpesa, $client_mpesa);
            $results = $response_data->json();
            // CheckoutRequestID: "ws_CO_060520201020365708"
            // CustomerMessage: "Success. Request accepted for processing"
            // MerchantRequestID: "18659-3597775-1"
            // ResponseCode: "0"
            // ResponseDescription:
            // $message = [];
            // if (!$results['ResponseCode'] > 0) {
            //     $message = [
            //         'successStatus' => 200,
            //     ];
            // } else {
            //     $message = [ 'error' => $results];
            // }

            return response()->json($results);
        } catch (\Throwable $th) {
            return response()->json(['errorOccured' => 'Oops!, Error occured at our end, Try again later.'], 404);
        }
    }
    
    // This function uses a callback function.
    public function doIt($callback)
    {
        $data = "this is my data";
        $callback($data);
    }


    // This is a sample callback function for doIt().
    // public function myCallback($data)
    // {
    //     return 'Data is: ' .  $data .  "\n";
    // }

    /**
    * Remove the specified resource from storage.
    *
    * @param  int  $id
    * @return \Illuminate\Http\Response
    */
    public function MpesaSTKCallback()
    {
        $this->doIt('myCallback');
    }
}
