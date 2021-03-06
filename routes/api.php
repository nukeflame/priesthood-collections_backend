<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->group(function () {
    // login
    Route::get('login', 'Auth\LoginController@login');
    // users
    Route::get('users', 'Api\UserController@index');
    Route::get('users/{user}', 'Api\UserController@show');
    //products
    Route::post('products', 'Api\ProductController@store');
    Route::patch('products/{product}', 'Api\ProductController@update');
    Route::delete('products/{product}', 'Api\ProductController@destroy');
    //posts
    Route::get('posts', 'Api\PostController@index');
    Route::post('posts', 'Api\PostController@store');
    Route::get('posts/{post}', 'Api\PostController@show');
    Route::put('posts/{post}', 'Api\PostController@update');
    //orders
    Route::get('orders', 'Api\OrderController@index');
    Route::get('orders/{order}', 'Api\OrderController@show');
    Route::post('orders', 'Api\OrderController@store');
    Route::post('orders/payment', 'Api\OrderController@makePayment');
    Route::put('orders/{order}', 'Api\OrderController@update');
    Route::delete('orders/{order}', 'Api\OrderController@destroy');
    Route::get('authOrder', 'Api\OrderController@authOrder');
    Route::post('orders/showOrder', 'Api\OrderController@showOrder');
    //order status
    Route::get('orderStatus', 'Api\OrderStatusController@index');
    //categories
    Route::post('categories', 'Api\CategoryController@store');
    //cartlist
    Route::apiResource('cartlist', 'Api\CartlistController');
    //shipping
    Route::post('shipping', 'Api\ShippingController@store');
    Route::get('shipping', 'Api\ShippingController@index');
    Route::get('shipping/{shipping}', 'Api\ShippingController@show');
    Route::delete('shipping/{shipping}', 'Api\ShippingController@destroy');
    Route::put('shipping/{shipping}', 'Api\ShippingController@update');
    //adresses
    Route::post('addresses', 'Api\AddressController@store');
    Route::get('addresses', 'Api\AddressController@index');
    Route::get('addresses/{address}', 'Api\AddressController@show');
    Route::put('addresses/{address}', 'Api\AddressController@update');
    //settings
    Route::post('settings', 'Api\SettingController@store');
    Route::put('settings/{setting}', 'Api\SettingController@update');
    //customers
    Route::get('customers', 'Api\CustomerController@index');
    Route::get('customers/{customer}', 'Api\CustomerController@show');
    Route::post('customers', 'Api\CustomerController@store');
    Route::put('customers/{customer}', 'Api\CustomerController@update');
    //billing
    Route::post('billing', 'Api\BillingController@store');
    Route::put('billing/{billing}', 'Api\BillingController@update');
    //promoProduct
    Route::put('updatePromoProduct/{promo}', 'Api\PromoProductController@update');
    Route::delete('promoProduct/{promo}', 'Api\PromoProductController@destroy');
    //mpesa
    Route::post('payment/access/token', 'Api\PaymentController@generateAccessToken');
    Route::post('payment/stk/push', 'Api\PaymentController@customerMpesaSTKPush');
    Route::post('payment/validation', 'Api\PaymentController@mpesaValidation');
    Route::post('payment/transaction/confirmation', 'Api\PaymentController@mpesaConfirmation');
});
//register
Route::post('register', 'Auth\RegisterController@register');
Route::put('register/{updateOtp}', 'Auth\RegisterController@updateOtp');
Route::post('register/authenticate', 'Auth\RegisterController@authenticate');
Route::post('register/verifyUser', 'Auth\RegisterController@verifyUser');
// products
Route::get('products', 'Api\ProductController@index');
Route::get('products/{product}', 'Api\ProductController@show');
//categories
Route::get('categories', 'Api\CategoryController@index');
Route::get('categories/{category}', 'Api\CategoryController@show');
//cartlist
Route::post('cartlistStore', 'Api\CartlistController@StoreCart');
//orders
Route::get('stk_callback', 'Api\OrderController@MpesaSTKCallback');
//settings
Route::get('settings', 'Api\SettingController@index');
//cities
Route::get('cities', 'Api\CityController@index');
//regions
Route::get('regions', 'Api\RegionController@index');
//pages
Route::get('pages', 'Api\PageController@index');
Route::post('pages', 'Api\PageController@store');
//posts
Route::get('getHomepagePosts', 'Api\PostController@getHomepagePosts');
Route::get('getfeaturedPosts', 'Api\PostController@getfeaturedPosts');
Route::get('getSliderPosts', 'Api\PostController@getSliderPosts');
Route::get('getOfferProducts/{post}', 'Api\PostController@findOfferProducts');
Route::post('searchProducts', 'Api\SearchController@index');
//promo product
Route::get('getPromoProduct', 'Api\PromoProductController@index');
Route::post('storePromoProduct', 'Api\PromoProductController@store');
//
