<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tìm kiếm</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <link  href="{{asset('public/frontend/css/homepage.css')}}" rel="stylesheet" type="text/css"/>
    <link  href="{{asset('public/frontend/css/mainfont.css')}}" rel="stylesheet" type="text/css"/>
    <link  href="{{asset('public/frontend/css/search.css')}}" rel="stylesheet" type="text/css"/>
    <link  href="{{asset('public/frontend/css/header.css')}}" rel="stylesheet" type="text/css"/>
    
</head>

<body>

@extends('welcome')

@section('content')

<div class="container pt-4">
    <div class="row">
        <div class="col-lg-3">
            <div class="container pt-3 pb-3">
                <div class="row">
                    <h5>Bộ Lọc Tìm Kiếm</h5>
                    <div class="col-lg-12 col-md-4 col-sm-4 mt-2">
                        <b>Nơi bán</b>
                        <div style="display: grid">
                            <span><input type="checkbox" name="location_selected" value="TP.Hồ Chí Minh"> TP.Hồ Chí Minh</span>
                            <span><input type="checkbox" name="location_selected" value="Hà Nội"> Hà Nội</span>
                            <span><input type="checkbox" name="location_selected" value="Đà Nẵng"> Đà Nẵng</span>               
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-4 col-sm-4 mt-2">
                        <b>Đơn vị vận chuyển</b>
                        <div style="display: grid">
                            <span><input type="checkbox" name="delivery_selected" value="Hoả tốc"> Hoả tốc</span>
                            <span><input type="checkbox" name="delivery_selected" value="Nhanh"> Nhanh</span>
                            <span><input type="checkbox" name="delivery_selected" value="Tiết kiệm"> Tiết kiệm</span>                    
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-4 col-sm-4 mt-2">
                        <b>Thương hiệu</b>
                    </div>
                </div>
            </div>

        </div>
        
        <div class="col-lg-9">
            <div class="boxproduct container p-0">
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
            </div>
        </div>

    </div>
</div>
@endsection

</body>

</html>