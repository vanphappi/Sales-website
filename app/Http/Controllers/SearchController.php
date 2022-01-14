<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Auth;

class SearchController extends Controller
{
    public function showpagesearch($keyword){
        return DB::select("select * from tbl_product where product_name like '%$keyword%' limit 20 "); 
    }

    public function index(Request $request){
        $keyword = $request->keyword; 
        return view ('search')  
            ->with(['products' => $this->showpagesearch($keyword)]);
    }

}