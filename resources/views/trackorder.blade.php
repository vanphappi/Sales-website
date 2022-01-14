<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vận chuyển</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="asset/css/frame_user_info.css"/>
    <link rel="stylesheet" type="text/css" href="asset/css/tracking.css"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/tracking.css')}}"/> 
</head>

<body>
    @extends('welcome')
    @section('content')
        @foreach ($orderinfo as $order)
        <div class="container product mini-main">
            <div class="container row box">
                <p class="col-md-9 text-donhang inline-block">Đơn hàng sẽ giao trước ngày 01-01-2021. Vui lòng thanh toán khi nhận hàng.</p>
                <button class="col-md-3 btn-received inline-block">{{$order->trangthaidonhang}}</button>
            </div>
        </div>

        <div class="container product mini-main">
            <div class="container row box">
                <button class="col-md-3 btn-contact inline-block">Liên hệ shop</button>
            </div>
        </div>


        <div class="container product">
            <div class="container row box">
                <div class="row" style="margin-bottom: 1%;">
                    <div class="col-10 checkproduct">
                        <span>Ten shop</span>
                    </div>        
                <div class="row">
                    <div class="col-lg-5 container imgproduct">
                        <div class="main-imgproduct">
                            <img src="{{asset('public/frontend/img/product/'.$order->hinhanh)}}">
                        </div>
                    </div>

                    <div class="col-lg-7 container detailproduct">
                        <div class="name-product">
                           
                        </div>

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
                                    <span>đ {{$order->gia}} </span>
                                </div>
                                <div class="col-sm-5 original-price-product">
                                    <span>đ {{$order->gia}} </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="container discount-percent-product">
                                    Giảm
                                    <span> 50</span>
                                    %
                                </div>
                            </div>
                        </div>
                            
                        <div class="row delivery-product">
                            <b>Vận chuyển: Miễn phí vận chuyển </b>
                            <span>Miễn phí vận chuyển cho đơn hàng trên ₫250.000</span>
                        </div>

                            <div class="row count-quantity-product">                    
                                <div class="container">
                                    <span>Số lượng:</span>
                                    <span> {{$order->soluong}} </span>
                                </div>
                            </div>
                        </div>
                </div>
            </div>    
            </div>
        </div>
    @endforeach
 
        <div class="container product tracking">
            <div class="container row box">
                <div class="row container trackinfo">
                    <div class="col-sm-4 left inline-block">
                        <i class="fas fa-map-marker-alt inline-block" aria-hidden="true"></i>
                        <h5 class="text-address inline-block" style="font-weight: bold">Địa chỉ mua hàng</h5>
                        <p class="text-phone">Số điện thoại <span>{{$order->sodienthoai}}</span></p>
                        <p class="text-address-1">{{$order->diachi}}</p>
                    </div>
                    <div class="the-line inline-block"></div>
                    <div class="col-sm-8 right">
                        <!-- <div class="trackmove">
                                <p class="text-annouce">09:12 20-11-2021</p>
                                <p class="text-annouce">Đơn hàng đang được vận chuyển từ Trung Quốc về Việt Nam</p>
                        </div>
                        <div class="trackmove">
                                <p class="text-annouce">17:08 18-11-2021</p>
                                <p class="text-annouce">[Quốc Tế] Đơn hàng đã được thông quan</p>
                        </div>
                        <div class="trackmove">
                                <p class="text-annouce">04:21 18-11-2021</p>
                                <p class="text-annouce">[Quốc Tế] Đơn hàng đã xuất kho Thẩm Quyến</p>
                        </div>
                        <div class="trackmove">
                                <p class="text-annouce">13:51 17-11-2021</p>
                                <p class="text-annouce">[Quốc Tế] Đơn hàng đã đến kho Thẩm Quyến</p>
                        </div>
                        <div class="trackmove">
                                <p class="text-annouce">10:42 17-11-2021</p>
                                <p class="text-annouce">[Quốc Tế] Lấy hàng thành công</p>
                                <p class="text-annouce">12:48 15-11-2021</p>
                                <p class="text-annouce">[Quốc Tế] Người gửi đang chuẩn bị hàng</p>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>

        <div class="container product paymentinfo">
            <div class="container row box">
                <div class="container row paymentinfo">
                    <div class="col-sm-6 col-5 text-pay">
                        <p>Phương thức thanh toán. Vui lòng thanh toán <span class="another-cost">₫0</span> khi nhận hàng.</p>
                    </div>  
                    <div class="col-sm-6 col-7 text-sum">
                        <div class="grouptext">
                            <div class="text-sum-1">
                                <p class="content-text-sum">Tổng tiền hàng:</p>
                                <span class="cost-sum">{{Cart::subtotal()}}</span>
                            </div>
                            <div class="text-sum-1">
                                <p class="content-text-sum">Phí vận chuyển:</p>
                                <span class="cost-sum">₫0</span>
                            </div>
                            <div class="text-sum-1">
                                <p class="content-text-sum">Giảm giá vận chuyển:</p>
                                <span class="cost-sum">₫0</span>
                            </div>
                            <div class="text-sum-1">
                                <p class="content-text-sum">Tổng số tiền:</p>
                                <span class="cost-sum">₫{{$order->gia}}</span>
                            </div>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    
   
    
    @endsection

</body>

</html>     