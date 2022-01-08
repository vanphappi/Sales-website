<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ hàng</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/cart.css')}}"/> 
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/mainfont.css')}}"/>   


</head>

<body>
   @extends('welcome')

    @section('content')
    <main>

        <!-- @if (session('message'))
            <div>{{ session ('message') }}</div>
        @endif -->

        <?php
        $cartlist = Cart::content();
        ?>
    
    <form method='POST' action= "{{ route ('showpagecheckout') }}" >

    @csrf
        @foreach ($cartlist as $product)
        <div class="container product">
            <div class="container row boxproduct">
                <div class="row" style="margin-bottom: 1%;">
                    <div class="col-10 checkproduct">
                        <input type="checkbox" name="product_selected[]" value="{{$product->rowId}}" class="checkboxproduct">
                        <span>Mall</span>
                    </div>        
                <a class="col-2 remove" href="{{URL::to('deletecart/'.$product->rowId) }}">
                    <i class="fas fa-times" aria-hidden="true"></i>
                </a>
            </div>

            <div class="row">
                <div class="d-flex align-items-center">
                <div class="col-lg-4 container imgproduct">
                    <div class="main-imgproduct">
                        <img src="{{'public/frontend/img/product/'.$product->options->image}}">
                    </div>
                </div>

                <div class="col-lg-7 container detailproduct">
                    <input type='hidden' name="productrowId" value="$product->rowId">
                    <div class="name-product">
                        {{$product->name}}
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
                                <span>{{'đ '.number_format ($product->price)}} </span>
                            </div>
                            <div class="col-sm-5 original-price-product">
                                <span>đ{{$product->price}} </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="container discount-percent-product">
                                Giảm
                                <span> {{$product->discount}} </span>
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
                            <div class="row" style="width: 110%;">
                                <div class="col-md-3 col-sm-6 col-6">
                                    Số lượng
                                </div>
                                <div class="col-md-4 col-sm-6 col-6">
                                    <div class="input-group number-spinner">
                                        <span class="input-group-btn">
                                            <a type="button" class="btn" data-dir="dwn" href="{{URL::to('decreasequantity/'.$product->rowId) }}"><span class="fa fa-minus" style="font-size: 10px; position: absolute;" aria-hidden="true"></span></a>
                                        </span>
                                        <input type="text" class="form-control text-center" value="{{$product->qty}}" readonly="readonly" style="background-color: rgb(254, 172, 184)">
                                        <span class="input-group-btn">
                                            <a type="button" class="btn" data-dir="up" href="{{URL::to('increasequantity/'.$product->rowId) }}"><span class="fa fa-plus" style="font-size: 10px; position: absolute;" aria-hidden="true"></span></a>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <span class="num-available-product">{{$product->options->status}}</span>
                                    sản phẩm có sẵn
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div></div>
            </div>    
        </div>
        @endforeach

        <div class="container totalprice">
            <div class="container row boxbill">
                <div class="row voucherline">
                    <div class="col-8">
                        <span>
                            <img src="{{('public/frontend/img/tag-discount.svg')}}" class="icon-voucher"> 
                            Mã voucher 
                        </span>
                    </div>
                    <div class="col-4">
                        <span>Chọn mã</span>
                    </div>
                </div>
                <div class="break-line"> </div>
                <div class="container bill pt-4">
                <div class="row">
                    <div class="col-lg-3 d-flex align-items-center">
                        <input type="checkbox" value="Tất cả">
                        <label>Tất cả</label>  
                        <a class="allremove">Xoá</a>
                    </div>
                    <div class="col-lg-4 billprice">
                        <span>Tổng thanh toán: </span>
                        <span class="totalbill">{{'đ'.(Cart::subtotal()) }}</span>
                    </div>
                    <div class="col-lg-5">
                        <div class="row button-buying-product">
                            <button class="col-md-6 col-sm-12 btn-return" type="button" onclick="window.history.back()">Quay lại </button>
                            <button class="col-md-6 col-sm-12 btn-buynow" type="submit" >Mua hàng</button>
                       
                    </div>
                </div>
            </div>
        </div>

    </form>
   
    </main>
    @endsection

<script>
    $(document).ready(function(){
            
            $('.checkboxproduct').change(function(){
                 if ($(this).is(':checked')) {
                alert('ddddd');
                 } 
                $productid = $(this).val();
                    // $.get("getprice.php?productid="+productid,function(data,status){
                    //     $(".totalbill").html(data);  
                    // });

                $.ajax {
                    method: "post",
                    url: "/getprice",
                    data: {
                        'productid': productid,
                    },
                    success: function (response) {
                        $(".totalbill").val($data);
                        alert("ffff");
                    }
                }

                }
            
        }); 
</script>

<script>
$(document).on('click', '.number-spinner button', function () {    
        var btn = $(this),
        oldValue = btn.closest('.number-spinner').find('input').val().trim(),
        newVal = 0;
            
        if (btn.attr('data-dir') == 'up') {
             if (oldValue>=100) {
                newVal = 100;
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

</body>
</html>     