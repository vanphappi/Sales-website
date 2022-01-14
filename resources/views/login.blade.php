<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Nhập</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/login_register.css')}}"/>

</head>

<body>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="{{('public/frontend/img/logo.png')}}" width="50px">
                </div>
                <div class="col-10">
                    <a>Need helps?</a>
                </div>
            </div>
        </div>

    </header>

    <main>
        <div class="container" style="background-color: #B4EDFF;">
            <div class="row">

                <form class="col-md-6" method="POST" action="{{ route('checklogin') }}">
                    @csrf    
                    <div class="form-text-group">
                        <div class="form-group">
                            <input class="form-control" id="email" name="email" type="email" placeholder="Số điện thoại / Email / Tên đăng nhập">
                        </div>

                        <div class="form-group">
                            <input class="form-control" id="password" name="password" type="password" placeholder="Mật khẩu">
                            <i class="far fa-eye-slash togglePassword" name="togglePassword" aria-hidden="true"></i>
                        </div>
                    </div>

                    @if ($message = Session::get('error'))
                    <div class="alert alert-danger alert-block">
                        <span> {{ $message }} </span>
                        <a type="button" class="close" data-dismiss="alert">x</a>
                    </div>
                    @endif
                
                    @if (count($errors) > 0)
                    <div class="alert alert-danger alert-block">
                        <ul>
                            @foreach($errors->all() as $error)
                            <li> {{ $error }} </li>
                            @endforeach
                        </ul>
                        <a type="button" class="close" data-dismiss="alert">x</a>
                    </div>
                    @endif

                    <div class="form-ques register">
                        Chưa có tài khoản ? 
                        <a class="text-dangky" href=" {{ route ('showpageregister') }} "><strong>Đăng ký</strong></a>
                    </div>
                    <div class="form-btn-group">
                        <div class="button-container">
                            <button class="form-btn" >Đăng nhập</button>
                            <p class="text">Hoặc đăng nhập với
                            </p>
                            <p>
                                <button class="form-btn"><i class="fab fa-google icon" aria-hidden="true"></i>Google</button>
                                <button class="form-btn"><i class="fab fa-facebook icon" aria-hidden="true"></i>Facebook</button>
                            </p>
                        </div>
                    </div>
                </form>

                <div class="col-md-6">
                    <img src="{{('public/frontend/img/reading-side.png')}}" class="img-responsive">
                </div>
            </div>
            
        </div>
    </main>

<script src="public/frontend/js/login_register.js"></script>

</body>

</html>