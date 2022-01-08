<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;

class CategoryController extends Controller
{
    public function showpagecategory($id){
        return DB::select(
            "select * 
            from tbl_product p join tbl_category_product c on p.category_id=c.category_id 
            where c.category_id='$id' limit 20 "); 
    }

    public function getcategoryname($id){
        return DB::select("select pd.*, ct.category_name, br.brand_name 
        from tbl_product pd join tbl_category_product ct on pd.category_id=ct.category_id join tbl_brand br on br.brand_id = pd.brand_id
        where pd.product_id = '$id' ")[0];
    }

    public function index($id){
        return view ('category')        
            ->with(['products' => $this->showpagecategory($id)]);
    }

}