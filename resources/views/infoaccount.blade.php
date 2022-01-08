<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hồ sơ cá nhân</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
     <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/hoso.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/frame_user_info.css')}}"/>
</head>

<body>
    @extends('account')

    @section('myaccount')
                <div class="col-lg-9 col-md-12 content-choice-details" style="background-color: #B4EDFF">
                    <div class="title-choice-details">
                        <h3>Hồ sơ</h3>
                        <span>Quản lý hồ sơ và bảo mật tài khoản</span>
                    </div>
                    <div class="container-user-details" style="background-color: #B4EDFF;">
                        <form method="POST" action="{{ route('changeinfo') }}">
                            @csrf
                            <div class="row form-group">
                                <label class="col-lg-4 col-sm-6 label-form">Tên đăng nhập:</label>
                                <div class="col-lg-8 col-sm-6 content-form">{{Auth::user()->name}}</div>
                            </div>
                            <div class="row form-group">
                                <label class="col-lg-4 col-sm-6 label-form">Tên:</label>
                                <div class="col-lg-8 col-sm-6 content-form">
                                    <input class="text-form" type="text" name="accname" value="{{Auth::user()->name}}">
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="col-lg-4 col-sm-6 label-form">Email:</label>
                                <div class="col-lg-8 col-sm-6 content-form">{{Auth::user()->email}}</div>
                            </div>
                            <div class="row form-group">
                                <label class="col-lg-4 col-sm-6 label-form">Số điện thoại:</label>
                                <div class="col-lg-8 col-sm-6 content-form">
                                    <input class="text-form" type="text" name="sodienthoai" value="{{Auth::user()->sodienthoai}}">
                                </div>
                            </div>
                            
                            <div class="row form-group">
                                <label class="col-lg-4 col-sm-6 label-form">Ngày sinh:</label>
                                <div class="col-lg-8 col-sm-6 content-form group-trippletext">
                                    <input type="date" name="ngaysinh" class="tripletext-form" value="{{Auth::user()->ngaysinh}}">
                                    
                                </div>
                            </div>
                            <div class="row form-group">
                                <label class="col-lg-4 col-sm-6 label-form">Địa chỉ:</label>
                                <div class="col-lg-8 col-sm-6 content-form group-trippletext">
                                    <input type="text" name="diachi" class="tripletext-form" value="{{Auth::user()->diachi}}">
                                    
                                </div>
                            </div>
                            <div class="row btn-form">
                                <div class="col-md-6">
                                    <button class="btn btn-save" type="submit">Lưu</button>
                                </div>
                                <div class="col-md-6">
                                    <button class="btn btn-return" type="button" onclick="location.href='{{route('showpagehome')}}'">Quay lại</button>
                                </div>
                            </div>
                        </form>
                    </div>

                    


                </div>


    @endsection
</body>
</html>