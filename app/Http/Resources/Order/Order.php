<?php

namespace App\Http\Resources\Order;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\Shipping\Shipping as ShippingResource;
use App\Http\Resources\Billing\Billing as BillingResource;
use App\Http\Resources\Order\OrderStatus as OrderStatusResource;
use App\Http\Resources\Cartlist\CartlistCollection;

class Order extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' =>$this->id,
            'orderNo' => $this->order_no,
            'total' => $this->total,
            'status' => new OrderStatusResource($this->status),
            'customer' => $this->customer,
            'shipping' => new ShippingResource($this->shipping),
            'billing' => new BillingResource($this->billing),
            'address' => $this->address,
            'items' => $this->cart != null ? json_decode($this->cart) : [],
            'createdAt' => $this->created_at,
        ];
    }
}
