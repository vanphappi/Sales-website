<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Voucher</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/frame_user_info.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/voucher.css')}}"/>
</head>

<body>
    @extends('account')
    @section('myaccount')
            <div class="col-lg-9 col-md-12 content-choice-details" style="background-color: #B4EDFF">
                <div class="content">
                    <div class="title-choice-details">
                        <div class="row" style="width: 100%;">
                            <h3 class="col-sm-8 col-9">Voucher</h3>
                        </div>
                    </div>

                    <div class="container-user-details" style="background-color: #B4EDFF;">
                        <div class="container-voucher">
                            <div class="voucher-title">
                                <div class="text-ma"> 
                                    <img src="{{asset('public/frontend/img/tag-discount.svg')}}" class="icon-voucher"> Mã voucher 
                                </div>
                            </div>
                            <div class="break-line"> </div>
                            <div>
                                <div class="voucher-detail row">
                                    <div class="col-md-3 col-sm-4 voucher-img">
                                         <img src="{{asset('public/frontend/img/voucher.png')}}" width="100%" class="col-sm-2 img-sanpham" height="47.5%">
                                    </div>
                                    <div class="col-md-7 col-sm-8 voucher-info">
                                        <h4>Giảm 30k</h4>
                                        <p>Giảm giá tối đa</p>
                                        <h5>20/11/2021 - 20/12/2021</h5>
                                    </div>
                                    <div class="col-md-2 col-sm-12 voucher-condition">
                                        <a>Điều kiện</a>
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