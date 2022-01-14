<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use App\Http\Requests;
use Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class OrderAdminController extends Controller
{
    
    public function all_order(){
        $all_order_product=DB::select("SELECT tbl_order.order_id madonhang,users.name tenkhachhang,tbl_brand.brand_name nhacungcap, tbl_order.order_status trangthaidonhang,tbl_product.product_name tensanpham,tbl_order_details.product_sales_quantity soluong,tbl_order_details.product_price gia,tbl_product.product_image hinhanh
FROM tbl_order,tbl_order_details ,tbl_product ,users,tbl_brand
WHERE tbl_order.order_id=tbl_order_details.order_id and tbl_product.product_id=tbl_order_details.product_id and users.id=tbl_order.customer_id and tbl_product.brand_id=tbl_brand.brand_id and users.id=tbl_order.customer_id 
ORDER by tbl_order.order_id DESC
            ");
        $manager_order_product= view('admin.all_order_product')->with('all_order_product',$all_order_product);
        return view('admin_layout')->with('admin.all_order_product',$manager_order_product);

    }

    public function edit_order_product($order_id){
        $edit_order_product = DB::table('tbl_order')->where('order_id',$order_id)->get();
        $manager_order_product= view('admin.edit_order_product')->with('edit_order_product',$edit_order_product);
        return view('admin_layout')->with('admin.edit_order_product',$manager_order_product);
    }

public function update_order_product(Request $request ,$order_id){
        $data = array();
        $data['order_status']=$request->order_status;
        DB::table('tbl_order')->where('order_id',$order_id)->update($data);
        Session::put('message','Sửa nhà trạng thái đơn hàng thành công !');
        return Redirect::to('/all-order');
    }
    
}
