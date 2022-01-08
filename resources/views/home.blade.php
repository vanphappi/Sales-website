@extends('welcome')
@section('content')
<div class="container">
    <div id="banner" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="{{('public/frontend/img/banner.png')}}" class="d-block" style="width:100%">
            </div>
            <div class="carousel-item">
                <img src="{{('public/frontend/img/banner.png')}}" class="d-block" style="width:100%">
            </div>
            <div class="carousel-item">
                <img src="{{('public/frontend/img/banner.png')}}" class="d-block" style="width:100%">
            </div>
        </div>
        
        <button class="carousel-control-prev" type="button" data-bs-target="#banner" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#banner" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
        </button>
    </div>
    <div class="container-md pt-4">
        <div class="row">
            <div class="col-md-3">
                <button type="button" class="btn-listcontent" style="color: black; background-color: #B4EDFF;">Mall</button>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn-listcontent">  Mã Giảm Giá</button>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn-listcontent" style="color: black; background-color: #B4EDFF;">Nạp Thẻ và Voucher</button>
            </div>
            <div class="col-md-3">
                <button type="button" class="btn-listcontent">Global</button>
            </div>
        </div>
    </div>
    <div class="boxflashsale container my-4">
        <div class="flashsalecontent">
            <div class="row gx-1 rowfls">
                <div>
                    <a class="btn btn-fls-viewmore pb-2" href="">Xem thêm &gt; </a>
                </div>
                <div class="gridspfls">
                    @foreach ($products_flashsale as $product)
                    <a class="col-lg fls" href="{{route ('showpageproduct', $product->product_id) }}">
                        <div class="card rectcard">
                            <img class="card-img-top" src="{{asset('public/frontend/img/product/'.$product->product_image)}}">
                            <span>{{$product->product_name}}</span>
                            <div>{{$product->product_price}} đ</div>
                        </div>
                    </a>
                    @endforeach
                </div>
                
            </div>
        </div>
        
        <div class="flashsaletitle">
            <label class="title">Flash Sale</label>
        </div>
    </div>
    
    <div class="boxcategory container p-0 ">
        <div class="container" style="background-color: #FBE061; height: 55px;">
            <label class="title">Danh Mục</label>
        </div>
        <div class="container" style="background-color: #B4EDFF; height: 100%; position: relative; justify-content: center; display: flex;">
            <div style="margin: 8px; width: 100%;">
                <div id="categorylist">
                    <div style="margin-left: auto;">
                        <div class="multiple-items" style="text-align: center;">
                            
                            @foreach ($categories as $category)
                            <div>
                                <a href="{{route ('showpagecategory', $category->category_id) }}">
                                    <div class="card category">
                                        <img class="circleimg" src="{{asset('public/frontend/img/catalog/'.$category->category_image)}}">
                                        <span>{{$category->category_name}}</span>
                                    </div>
                                </a>
                            </div>
                            @endforeach
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="boxproduct container p-0 pt-4">
        <div class="container" style="background-color: #FBE061; height: 55px;">
            <label class="title">Sản Phẩm</label>
        </div>
        <div class="container boxsanpham">
            <div style="margin-top: 8px;">
                <div class="gridsp row gx-1">
                    @foreach ($products as $product)
                    <a class="col-md sp" href="{{route ('showpageproduct', $product->product_id) }}">
                        <div class="card rectcard">
                            <img class="card-img-top" src="{{asset('public/frontend/img/product/'.$product->product_image)}}">
                            <span>{{$product->product_name}}</span>
                            <div>{{$product->product_price}} đ</div>
                        </div>
                    </a>
                    @endforeach
                    
                </div>
                
                <div style="justify-content: center; display: flex;">
                    <button class="btnviewmore">Xem thêm</button>
                </div>
            </div>
        </div>
        @endsection