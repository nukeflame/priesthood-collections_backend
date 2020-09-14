<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    public function addresses()
    {
        return $this->hasMany('App\Models\Address');
    }
}
