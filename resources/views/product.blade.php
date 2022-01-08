<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sản phẩm</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/hoso.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/frame_user_info.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/buyingpage.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/header.css')}}"/>   
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/mainfont.css')}}"/>  
    
    <link  href="{{asset('public/frontend/css/homepage.css')}}" rel="stylesheet" type="text/css"/>
    
</head>

<body>

@extends('welcome')

@section('content')

    <div class="container product my-4">
        
        <div class="container titlepart">
            {{$productinfo->category_name}}
        </div>
        
        <div class="boxproduct">
            <div class="row">
            <div class="col-lg-5 col-md-12 container imgproduct">
                <div class="main-imgproduct">
                    <img src="{{asset('public/frontend/img/product/'.$productinfo->product_image)}}">
                </div>

            </div>

            <div class="col-lg-7 col-md-12">
                <div class="container detailproduct">
                <form method="POST" action=" {{route('addtocart')}}">
                    @csrf 
                   
                    <div class="name-product"> {{$productinfo->product_name}} </div>

                    <div class="row info-product">
                        <div class="col-md-5 info-rating-product">
                            <div class="small-ratings" style="margin-right: 5px;"> 
                                <i class="fa fa-star rating-color" aria-hidden="true"></i> 
                                <i class="fa fa-star rating-color" aria-hidden="true"></i> 
                                <i class="fa fa-star rating-color" aria-hidden="true"></i> 
                                <i class="fa fa-star-o" aria-hidden="true"></i> 
                                <i class="fa fa-star-o" aria-hidden="true"></i> 
                            </div>
                            <div>
                                <span class="num-ratings">3.0</span>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 col-6 info-review-product">
                            Đánh giá
                            <span class="numreview-product">100</span>
                        </div>
                        <div class="col-md-3 col-sm-6 col-6">
                            Đã bán
                            <span class="numsold-product">100</span>
                        </div>
                    </div>
                    
                    <div class="row price-product">
                        <div class="row">
                            <div class="col-sm-7 discount-price-product">  
                                <span>đ {{$productinfo->product_price}}</span>
                            </div>
                            <div class="col-sm-5 original-price-product">
                                <div style="padding-top: 10px">đ {{$productinfo->product_price}} </div>
                            </div>
                        </div>                    
                    </div>
                    
                    <div class="row delivery-product">
                        <b>Vận chuyển: Miễn phí vận chuyển </b>
                        <span>Miễn phí vận chuyển cho đơn hàng trên ₫250.000</span>
                    </div>

                    <div class="row count-quantity-product">                    
                        <div class="container">
                            <div class="row" style="width: 110%;">
                                <div class="col-md-3 col-sm-6">
                                    Số lượng
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="input-group number-spinner">
                                        
                                        <span class="input-group-btn">
                                            <button type="button" class="btn" data-dir="dwn"><span class="fa fa-minus" style="font-size: 10px; position: absolute;" aria-hidden="true"></span></button>
                                        </span>
                                        <input name="qty" type="text" class="form-control text-center quantity" value="1" readonly="readonly" style="background-color: rgb(254, 172, 184)">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn" data-dir="up"><span class="fa fa-plus" style="font-size: 10px; position: absolute;" aria-hidden="true"></span></button>
                                        </span>

                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <span class="num-available-product">{{$productinfo->product_quantily}}</span>
                                    sản phẩm có sẵn
                                </div>
                            </div>
                        </div>
                    </div>

                    <input type="hidden" name="productid" value="{{$productinfo->product_id}}">

                    <div class="row button-buying-product">
                        <button type="submit" name="addproduct" class="col-md-6 col-sm-12 btn-addtocart">Thêm vào giỏ hàng</button>
                        <button type="submit" name="buynow" class="col-md-6 col-sm-12 btn-buynow">Mua ngay</button>
                    </div>    
                </form>
                </div>
            </div>
        </div></div>
    </div>
        
    <div class="container product shopowner my-4 ">
        <div class="row d-flex" style="align-items: center;">
            <div class="col-sm-3" style=" position: relative; display: flex; justify-content: center; ">
                <div class="avatar-shopowner">
                    <img src="{{asset('public/frontend/img/logo.png')}}" width="100%">
                </div>
            </div>
            <div class="col-md-6 content-shop border-right">
                
                    <div class="row name-status-shopowner">
                        <div class="col-md-6 name-shopowner ">
                            {{$productinfo->brand_name}}
                        </div>
                        <div class="col-md-6 status-shopowner">
                            Online
                        </div>
                    </div>
                
                    <div class="row view-chatwith-shopowner d-flex" style="padding-inline: 5px;justify-content: space-around;">
                        <div class="col-lg-6">
                    <button class=" btn-view-shopowner"> Xem shop </button>       
                        </div>
                        <div class="col-lg-6">
                            <button class=" btn-chatwith-shopowner">Chat với Shop</button>                        
                        </div>
                    </div>
            </div>
            
            <div class="col-sm-3 numreview-numproduct-shop">
                <div class="row-review-product">
                    <div style="display: inline-block;"><span class="numreview-shop">Đánh giá 100</span>
                    </div>
                    <div style="display: inline-block;"><span class="numproduct-shop">Sản phẩm 35</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container product details-describe my-4">
        <div class="details">
            <div class="titlepart">
                Chi tiết sản phẩm
            </div>
            <div class="details-text">
                {!!$productinfo->product_desc!!}
            </div>
        </div>
        <div class="describe">
            <div class="titlepart">
                Mô tả sản phẩm
            </div>
            <div class="describe-text">
              {!!$productinfo->product_content!!}
            </div>
        </div>
        
    </div>

    <!-- <div class="container product reviews my-4">
        <div class="titlepart">
            Đánh giá sản phẩm
        </div>
        <div class="container review-buyer">

            <div class="row line-review-buyer">
                <div class="col-1 avatar-buyer-placeholder">
                    <img class="avatar-buyer" src="{{asset('public/frontend/img/logo.png')}}">
                </div>
                
                <div class="col-10 review-detail-buyer">
                    <div class="row info-rating-product">
                        <div class="small-ratings" style="margin-right: 5px;"> 
                            <i class="fa fa-star rating-color" aria-hidden="true"></i> 
                            <i class="fa fa-star rating-color" aria-hidden="true"></i> 
                            <i class="fa fa-star rating-color" aria-hidden="true"></i> 
                            <i class="fa fa-star-o" aria-hidden="true"></i> 
                            <i class="fa fa-star-o" aria-hidden="true"></i> 
                        </div>
                    </div>
                    <div class="row name-review">
                        KhachHang3
                    </div>
                    <div class="row comment-review">
                        Hahahahahahahahaha 12345
                    </div>
                    <div>
                        <div class="row imglist-review">
                            <div class="img-review-placeholder">
                                <img class="img-review" src="{{asset('public/frontend/img/sp1.png')}}">
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
            
        </div>
    </div> -->

<script>
$(document).on('click', '.number-spinner button', function () {    
        var btn = $(this),
        oldValue = btn.closest('.number-spinner').find('input').val().trim(),
        newVal = 0;
        max_qty = {{$productinfo->product_status}};

        if (btn.attr('data-dir') == 'up') {
             if (oldValue>=max_qty) {
                newVal = max_qty;
            }
            else {
                newVal = parseInt(oldValue) + 1;
            }
        }
        else {
            if (oldValue > 1) {
                newVal = parseInt(oldValue) - 1;
            } 
            else {
                newVal = 1;
            }
        }
        btn.closest('.number-spinner').find('input').val(newVal);
    });
</script>

@endsection

</body>


</html>