<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function getuser(){
        return DB::select("select name, avatar from users"); 
    }
    

    public function getproduct(){
        return DB::select("select * from tbl_product limit 20"); 
    }
    
    public function getflashsale(){
        return DB::select("select * from tbl_product limit 6"); 
        
    }

    public function getcategory(){
        return DB::select("select * from tbl_category_product");
    }


    public function index(){
        return view ('home')
            ->with(['userinfo' => $this->getuser()])
            ->with(['products' => $this->getproduct()])
            ->with(['products_flashsale' => $this->getflashsale()])
            ->with(['categories' => $this->getcategory()]);
    }

}
