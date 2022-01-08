<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Auth;

class AccountController extends Controller
{
    public function getorder(){
        $user = Auth::user()->id;

        return DB::select("SELECT tbl_brand.brand_name nhacungcap, tbl_order.order_status trangthaidonhang,tbl_product.product_name tensanpham,tbl_order_details.product_sales_quantity soluong,tbl_order_details.product_price gia,tbl_product.product_image hinhanh, tbl_order.order_id iddonhang, tbl_category_product.category_name loaisanpham
FROM tbl_order,tbl_order_details ,tbl_product ,users,tbl_brand,tbl_category_product
WHERE tbl_order.order_id=tbl_order_details.order_id and tbl_product.product_id=tbl_order_details.product_id and users.id=tbl_order.customer_id and tbl_product.brand_id=tbl_brand.brand_id and tbl_category_product.category_id=tbl_product.category_id and users.id='$user'
            ");
    }

    public function chitietdonhang($order_id){
        return view('trackorder');
    }

    public function index(){
        return view ('infoaccount');
    }

    public function showbankaccount(){
        return view ('bankaccount');
    }

    public function showaddress(){
        return view ('addressaccount');
    }

    public function changepassword(){
        return view ('infoaccount');
    }

    public function showtransaction(){
        return view ('transaccount')->with(['orderinfo' => $this->getorder()]);
    }

    public function showvoucher(){
        return view ('voucheraccount');
    }

    public function changeavata(Request $request){
        $user = Auth::user()->id;
        $get_image = $request->file('suaavatar');
        if($get_image){
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image =  $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $get_image->move('public/frontend/img/user',$new_image);
            $avatar = $new_image;
            DB::update("UPDATE `users` SET `avatar`='$avatar' WHERE id='$user'");
            return Redirect::to('/account');
        }else
            return Redirect::to('/account');
    }

    public function changeinfo(Request $request){
        $user = Auth::user()->id;
        DB::update("UPDATE `users` SET `name`='$request->accname',`sodienthoai`='$request->sodienthoai',`ngaysinh`='$request->ngaysinh',`diachi`='$request->diachi' WHERE id='$user'");
        return Redirect::to('/account');

    }


    public function orderinfo($id){
        return DB::select("SELECT tbl_brand.brand_name nhacungcap, tbl_order.order_status trangthaidonhang,tbl_product.product_name tensanpham,tbl_order_details.product_sales_quantity soluong,tbl_order_details.product_price gia,tbl_product.product_image hinhanh, tbl_order.order_id iddonhang, users.sodienthoai sodienthoai, users.diachi diachi, tbl_category_product.category_name loaisanpham
FROM tbl_order,tbl_order_details ,tbl_product ,users,tbl_brand,tbl_category_product
WHERE tbl_order.order_id=tbl_order_details.order_id and tbl_product.product_id=tbl_order_details.product_id and users.id=tbl_order.customer_id and tbl_product.brand_id=tbl_brand.brand_id and tbl_category_product.category_id=tbl_product.category_id and tbl_order.order_id='$id'");
    }

    public function indexs($id){
        return view ('trackorder')
            ->with('orderinfo', $this->orderinfo($id)) ;       

    }
    
}
