<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Auth;
use Cart;

class CheckoutController extends Controller
{
     public function showvoucher(){
        return DB::select("select * from tbl_voucher where voucher_id != 1 "); 
    }

    public function showpagecheckout(Request $request){
       //$arr_product_selected=Cart::get($request->$product_selected);
        // if (isset($request->product_selected)) {

        //    foreach ($request->product_selected as $product) {
        //         $arr_product_selected[$product] = Cart::get($product);
           
        //     // return dd("$product");
        //         //$arr_product_selected = $cartlist->rowId;
        //    } 
        // }
       // return dd($arr_product_selected);

        return view ('checkout') ->with(['vouchers' => $this->showvoucher()]);;
            // ->with(['cartlist' => $arr_product_selected]);
    }

    

    

    

    
}
