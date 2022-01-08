<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/payment.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/voucher.css')}}"/>

    <!-- number spinner -->
    <script>
        $(document).on('click', '.number-spinner button', function () {    
            var btn = $(this),
            oldValue = btn.closest('.number-spinner').find('input').val().trim(),
            newVal = 0;
            
            if (btn.attr('data-dir') == 'up') {
                newVal = parseInt(oldValue) + 1;
            } else {
                if (oldValue > 1) {
                    newVal = parseInt(oldValue) - 1;
                } else {
                    newVal = 1;
                }
            }
            btn.closest('.number-spinner').find('input').val(newVal);
        });
    </script>


</head>

<body>
 @extends('welcome')
 @section('content')

    <?php 
        $cartlist = Cart::content();
    ?>
                
    <form method="POST" action="{{ route ('createorder') }}" >
        @csrf
        @foreach ($cartlist as $product)
       
        <div class="container product">
            <div class="container row box">
                <div style="margin-bottom: 1%;">
                    <div class="col-10 checkproduct">
                        <span>Ten shop</span>
                    </div>        
                    <div class="row">
                        <div class="col-lg-5 container imgproduct">
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
                                    <span> {{'đ '.number_format ($product->price)}} </span>
                                </div>
                                <div class="col-sm-5 original-price-product">
                                    <span> {{'đ '.number_format ($product->price)}} </span>
                                </div>
                            </div>
                            <div class="row">
                                <div class="container discount-percent-product">
                                    Giảm
                                    <span> {{($product->discount)}} </span>
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
                                    <span>{{($product->qty)}}</span>
                                </div>
                            </div>
                        </div>
                </div>
            </div>    
            </div>
        </div>

        @endforeach

        <div class="container product voucher">
            <div class="container row box">
                 <div class="row voucherline">
                    <div class="col-md-8"><img src="{{('public/frontend/img/tag-discount.svg')}}" class="img-voucher">
                        <span>Voucher</span>
                    </div>
                    <div class="col-md-4">
                        <span class="detail-voucher"></span>
                        <a id="choose-voucher" type="button">Chọn voucher</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="container product delivery">
            <div class="container row box">
                <div class="row">
                    <div class="col-md-6 change-delivery">
                        <b class="text-phone inline-block">Đơn vị vận chuyển</b>
                        <span class="default-text inline-block"></span><a>THAY ĐỔI</a>
                    </div>
                     <div class="col-md-6 totalbill">
                        <span> {{ 'Tổng số tiền ('. (Cart::count()) .' sản phẩm)' }} </span>
                        <span class="cost-sum"> {{'đ '.(Cart::subtotal()) }} </span>
                    </div>
                </div>
            </div>
        </div>

        <div class="container product paymentinfo">
            <div class="container row box">
                <div class="row">
                   <b class="col-md-6 text-phone inline-block">Phương thức thanh toán</b>
                   <div class="col-md-6 paymentline"><span class="default-text"></span><span class="change-payment">THAY ĐỔI</span>
               </div> 
                </div>
            </div>
        </div>        

        <div class="container product paymentinfo">
            <div class="container row box">
                <div class="extrem-mini-main">
                    <div class="row">
                        <p class="col-md-5 text-policy inline-block">Nhấn "Đặt hàng" đồng nghĩa với việc bạn đồng ý tuân theo Điều khoản Shopee</p>
                        <div class="col-md-4">
                            <p class="sum-text inline-block">Tổng thanh toán</p>
                            <div class="another-cost inline-block" ><span name="amount">{{'đ '.(Cart::subtotal()) }}</span></div>
                        </div>
                    <div class="col-md-3">
                        <button class="btn-buy inline-block" type="submit">Đặt hàng</button>
                        <button class="btn btn-buy btn-light inline-block mt-1" type="button" onclick="window.history.back()">Quay lại </button>
                    </div>  
                </div>
            </div>
        </div>

    </div>

    </form>                            

<!-- The Modal -->
<div id="voucher-modal" class="modal">
  <!-- Modal content -->
  <div class="content-modal">
    <span class="close">&times;</span> 
    <div class="container">
        @foreach ($vouchers as $voucher)
        <a class="container-voucher" name="container-voucher[]">
        <div class="container" style="background-color: green">
            <div class="voucher-detail row">    
                <div class="col-md-3 col-sm-4 voucher-img">
                    <img src="{{asset('public/frontend/img/voucher.png')}}" width="100%" class="col-sm-2 img-sanpham" height="47.5%">
                </div>
                <div class="col-md-7 col-sm-8 voucher-info">
                    <input type="hidden" name='voucherid[]' class="voucherid" id="{{$voucher->voucher_name}}" value="{{$voucher->voucher_name}}">
                    <h4>{{$voucher->voucher_name}}</h4>
                    <h5>HSD: {{$voucher->voucher_date}}</h5>
                </div>
                <div class="col-md-2 col-sm-12 voucher-condition">
                    <a>Điều kiện</a>
                </div>
            </div>
        </div>    
        </acontainer-voucher>
        @endforeach
    </div>
  </div>
</div>

<script src="public/frontend/js/modal_voucher.js"></script>

<script>
    $(document).ready(function(){
        $("a[name='container-voucher[]']").click(function(){
            var detail = $("input[name='voucherid[]']").val();
       //     .map(function(){return $(this).val();}).get();
           // var detail = $('.voucherid').val();
            $('.detail-voucher').html(detail);
            $('#voucher-modal').hide();
        });
    });
</script>

@endsection

</body>

</html>     