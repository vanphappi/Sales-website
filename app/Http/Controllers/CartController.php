<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Redirect;
use Auth;
use Cart;

class CartController extends Controller
{

    public function getcart(){
       // $user = Auth::user()->id;
        //return DB::select("select od.amount, pd.name, pd.image_link, pd.discount, pd.price 
        //from tborder od join product pd on od.product_id=pd.id join transaction ts on od.transaction_id=ts.id join user us on ts.user_id=us.id where us.id='$user'"); 
    }

    public function addtocart(Request $request){
        if (!Auth::guest()){
            $quantity = $request->qty;
            $product = DB::select("select * from tbl_product where product_id = '$request->productid'")[0];

            $data['id'] = $request->productid;
            $data['name'] = $product->product_name;
            $data['qty'] = $quantity;
            $data['price'] = $product->product_price;
            $data['weight'] = $product->product_price;
            $data['options']['image']= $product->product_image;
            $data['options']['status']= $product->product_status;
            Cart::add( $data );

            if (isset($_POST['addproduct'])){
                return back();
            }
            else {
                return Redirect::to('/cart')->with('message', 'success');
            }
        } 
        return Redirect::to('/login');;
        
    }

    public function deletecart($rowid){
        Cart::update ( $rowid, 0 );
        return Redirect::to('/cart');
    }

    public function increasequantity($rowid){
        $product = Cart::get($rowid);
        $quantity = $product->qty + 1;
        if ($quantity <= $product->options->status) {
           Cart::update ( $rowid, $quantity);
           return Redirect::to('/cart');
        } else {
            echo "<script>alert ('Khong duoc hehe')</script>";
            return Redirect::to('/cart');
        }
        
    }

    public function decreasequantity($rowid){
        $product = Cart::get($rowid);
        $quantity = $product->qty - 1;
        Cart::update ( $rowid, $quantity);
        return Redirect::to('/cart');
    }

    public function getprice(Request $request){
        $productid = $request->input('productid');
        $totalprice = Cart::get($rowid)->price;
        return $totalprice;
    }

    public function index(){
        return view ('cart')
            ->with(['cartproducts' => $this->getcart()]);
    }

    
}