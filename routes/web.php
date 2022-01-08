<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\CheckoutController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\VoucherController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductAdminController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//home
Route::get('/', [HomeController::class,'index']);
Route::get('/home', [HomeController::class,'index'])->name('showpagehome');


//login logout register
Route::get('/login', [AuthController::class,'showpagelogin'])->name('showpagelogin');
Route::post('/login', [AuthController::class,'checklogin'])->name('checklogin');

Route::get('/logout', [AuthController::class,'logout'])->name('logout');

Route::get('/register', [AuthController::class, 'showpageregister'])->name('showpageregister');
Route::post('/register', [AuthController::class,'checkregister'])->name('checkregister');
Route::post('/register-confirm', [AuthController::class, 'showpageconfirmregis'])->name('showpageconfirmregis');

//search
Route::get('/search', [SearchController::class,'index'])->name('showpagesearch');

//category
Route::get('/category-product/{id}', [CategoryController::class,'index'], 
function($id){
    return view('category');})->name('showpagecategory');

//cart
Route::get('/cart', [CartController::class,'index'])->name('showpagecart');
Route::get('/addtocart', [CartController::class,'addtocart'])->name('addtocart');
Route::post('/addtocart', [CartController::class,'addtocart'])->name('addtocart');
Route::get('/deletecart/{rowId}', [CartController::class,'deletecart'] )->name('deletecart');
Route::get('/increasequantity/{rowId}', [CartController::class,'increasequantity'] )->name('increasequantity');
Route::get('/decreasequantity/{rowId}', [CartController::class,'decreasequantity'] )->name('decreasequantity');
Route::get('/getprice', [CartController::class,'getprice'] )->name('getprice');

// Route::get('/addproducttocart', [CartController::class,'addproducttocart'])->name('addproducttocart');
// Route::post('/addproducttocart', [CartController::class,'addproducttocart'])->name('addproducttocart');

Route::get('/product/{id}', [ProductController::class,'index'], 
    function($id) {
        return view('product');
})->name('showpageproduct');

// Route::get('/cart', [ProductController::class,'buyproductnow'], 
//     function($id) {
//         return view('cart');
// })->name('buyproductnow');

   // Route::resource('account', AccountController::class);

//account
Route::get('/account', [AccountController::class,'index'])->name('showpageaccount');
Route::get('/account-info', [AccountController::class,'index'])->name('showuserinfo');
Route::get('/account-bank', [AccountController::class,'showbankaccount'])->name('showbankaccount');
Route::get('/account-address', [AccountController::class,'showaddress'])->name('showaddress');
Route::get('/account-change-password', [AccountController::class,'changepassword'])->name('changepassword');
Route::get('/account-transactions', [AccountController::class,'showtransaction'])->name('showtransaction');
Route::get('/account-voucher', [AccountController::class,'showvoucher'])->name('showvoucher');

Route::post('/changeinfo', [AccountController::class,'changeinfo'])->name('changeinfo');

Route::post('/changeavata', [AccountController::class,'changeavata'])->name('changeavata');

Route::get('/trackorders/{id}', [AccountController::class,'indexs'],
function($id){
    return view('trackorder');
})->name('showpagetrackorders');

//order
Route::get('/trackorder', [OrderController::class,'index'])->name('showpagetrackorder');

//payment
Route::get('/checkout', [CheckoutController::class,'showpagecheckout'])->name('showpagecheckout');
Route::post('/checkout', [CheckoutController::class,'showpagecheckout'])->name('showpagecheckout');
Route::get('/checkout/voucher', [VoucherController::class,'index'])->name('showmodalvoucher');

Route::get('/payment', [OrderController::class,'createorder'])->name('createorder');
Route::post('/payment', [OrderController::class,'createorder'])->name('createorder');








//Admin
Route::get('/admin', 'App\Http\Controllers\AdminController@index');
Route::get('/dashboard', 'App\Http\Controllers\AdminController@show_dashboard');
Route::post('/admin-dashboard', 'App\Http\Controllers\AdminController@dashboard');
Route::get('/logout_admin', 'App\Http\Controllers\AdminController@logout_admin');

//CategoryProduct
Route::get('/add-category-product', 'App\Http\Controllers\CategoryProductController@add_category_product');
Route::get('/all-category-product', 'App\Http\Controllers\CategoryProductController@all_category_product');
Route::post('/save-category-product', 'App\Http\Controllers\CategoryProductController@save_category_product');

Route::get('/edit-category-product/{category_product_id}', 'App\Http\Controllers\CategoryProductController@edit_category_product');
Route::get('/delete-category-product/{category_product_id}', 'App\Http\Controllers\CategoryProductController@delete_category_product');
Route::post('/update-category-product/{category_product_id}', 'App\Http\Controllers\CategoryProductController@update_category_product');

//BrandProduct
Route::get('/add-brand-product', 'App\Http\Controllers\BrandProductController@add_brand_product');
Route::get('/all-brand-product', 'App\Http\Controllers\BrandProductController@all_brand_product');
Route::post('/save-brand-product', 'App\Http\Controllers\BrandProductController@save_brand_product');

Route::get('/edit-brand-product/{brand_product_id}', 'App\Http\Controllers\BrandProductController@edit_brand_product');
Route::get('/delete-brand-product/{brand_product_id}', 'App\Http\Controllers\BrandProductController@delete_brand_product');
Route::post('/update-brand-product/{brand_product_id}', 'App\Http\Controllers\BrandProductController@update_brand_product');

//Product
Route::get('/add-product', 'App\Http\Controllers\ProductAdminController@add_product');
Route::get('/all-product', 'App\Http\Controllers\ProductAdminController@all_product');
Route::post('/save-product', 'App\Http\Controllers\ProductAdminController@save_product');

Route::get('/edit-product/{product_id}', 'App\Http\Controllers\ProductAdminController@edit_product');
Route::get('/delete-product/{product_id}', 'App\Http\Controllers\ProductAdminController@delete_product');
Route::post('/update-product/{product_id}', 'App\Http\Controllers\ProductAdminController@update_product');

//Order
Route::get('/all-order', 'App\Http\Controllers\OrderAdminController@all_order');
Route::post('/update-order-product/{order_id}', 'App\Http\Controllers\OrderAdminController@update_order_product');
Route::get('/edit-order-product/{order_id}', 'App\Http\Controllers\OrderAdminController@edit_order_product');
