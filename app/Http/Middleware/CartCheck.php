<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\CartCheck as Middleware;

class CartCheck extends Middleware
{
   
    protected $except = [
        'current_password',
        'password',
        'password_confirmation',
    ];
}
