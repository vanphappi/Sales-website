<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;
use Cart;

class OrderController extends Controller
{
    public function getorder(){
        $user = Auth::user()->id;

        return DB::select("SELECT tbl_brand.brand_name nhacungcap, tbl_order.order_status trangthaidonhang,tbl_product.product_name tensanpham,tbl_order_details.product_sales_quantity soluong,tbl_order_details.product_price gia,tbl_product.product_image hinhanh, tbl_order.order_id iddonhang, tbl_category_product.category_name loaisanpham
FROM tbl_order,tbl_order_details ,tbl_product ,users,tbl_brand,tbl_category_product
WHERE tbl_order.order_id=tbl_order_details.order_id and tbl_product.product_id=tbl_order_details.product_id and users.id=tbl_order.customer_id and tbl_product.brand_id=tbl_brand.brand_id and tbl_category_product.category_id=tbl_product.category_id and users.id='$user'
            ");
    }

    public function index(){
        $user_id = Auth::user()->id;
        $transinfo = DB::select("select * from transaction where user_id='$user_id' ");

        return view ('trackorder')->with(['transinfo' => $transinfo]) ;       
     
    }

    public function createorder(Request $request){

        $currentts = date('Y-m-d H:i:s', time());
        $user_id = Auth::user()->id;
        $cartlist = Cart::content();
        $total = Cart::subtotal();
        
        $ins_order = DB::insert(
        "INSERT INTO `tbl_order`(
            `customer_id`, `voucher_id`, `order_total`, `order_status`, `order_address`)  
            VALUES ('$user_id', '1', '$total', 'Chờ lấy hàng', 'BT')");
        
        $get_orderid =  DB::select("select max(order_id) as maxid from tbl_order")[0]->maxid;          

        foreach ($cartlist as $product) {
        
            $ins_order_detail = DB::insert(
            "INSERT INTO `tbl_order_details`
                (`order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`) 
                VALUES ('$get_orderid','$product->id','$product->name','$product->price', '$product->qty')");

            $status = $product->options->status - $product->qty;

            $updatecategory = DB::update("UPDATE `tbl_product` SET `product_status`='$status' WHERE product_id = $product->id");
        }

        Cart::destroy();

        $orderinfo = DB::select("select * from tbl_order_details ordt join tbl_order od on ordt.order_id=od.order_id join tbl_product p on p.product_id=ordt.product_id where od.order_id='$get_orderid' ");

        //return view ('trackorder')->with(['orderinfo' => $orderinfo]) ; 
        return view('transaccount')->with(['orderinfo' => $this->getorder()]);
        
    }

}