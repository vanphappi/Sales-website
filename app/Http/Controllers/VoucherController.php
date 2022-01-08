<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;

class VoucherController extends Controller
{
    public function showvoucher(){
        return DB::select("select * from tbl_voucher"); 
    }

    public function index(){
        return view ('checkout')  
            ->with(['vouchers' => $this->showvoucher()]);
    }

}