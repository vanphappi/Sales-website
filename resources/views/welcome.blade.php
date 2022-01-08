<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trang chủ</title>
    <script src="https://kit.fontawesome.com/c44ecc908b.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link  href="{{asset('public/frontend/css/homepage.css')}}" rel="stylesheet" type="text/css"/>
    <link  href="{{asset('public/frontend/css/mainfont.css')}}" rel="stylesheet" type="text/css"/>
    <link  href="{{asset('public/frontend/css/header.css')}}" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/hoso.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/frame_user_info.css')}}"/>
    <link rel="stylesheet" type="text/css" href="{{asset('public/frontend/css/total_cart.css')}}"/>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css" integrity="sha512-6lLUdeQ5uheMFbWm3CP271l14RsX1xtx+J5x2yeIDkkiBpeVTNhTqijME7GgRKKi6hCqovwCoBTlRBEC20M8Mg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css" integrity="sha512-wR4oNhLBHf7smjy0K4oqzdWumd+r5/+6QO/vDda76MW5iug4PT7v86FoEkySIJft3XA0Ae6axhIvHrqwm793Nw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    
<header>
    <div class="container-fluid" style="background: #B4EDFF;">
        <div class="row row-mainnav">
            <nav class="col-md-9 col-sm-6 col-2 mainnav navbar navbar-expand-lg navbar-light bg-light">
                <div style="width: 100%">
                    <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="navbar-collapse collapse" id="navbarNavAltMarkup" style="">
                        <div class="navbar-nav">
                            <a class="nav-link active" aria-current="page" href="{{ route ('showpagehome') }}" >Home</a>
                            <a class="nav-link" href="{{ route ('showpagehome') }}">Features</a>
                            <a class="nav-link" href="{{ route ('showpagehome') }}">Pricing</a>
                            <a class="nav-link " href="{{ route ('showpagehome') }}" >Community</a>
                            <a class="nav-link " href="{{ route ('showpagehome') }}" >Support</a>
                            <a class="nav-link " href="{{ route ('showpagetrackorder') }}" >Track order</a>
                        </div>
                    </div>
                </div>
            </nav>
            
            <div class="col-md-3 col-sm-6 col-10 btnnav">
                
            @if (isset(Auth::user()->email))
                <div class="flex-shrink-0 dropdown">
                    <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser2" data-bs-toggle="dropdown" aria-expanded="false">
                        <strong>{{Auth::user()->name}}</strong>    
                        <img src="{{asset('public/frontend/img/user/'.Auth::user()->avatar)}}" alt="mdo" width="55" height="55" class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="{{ route('showpageaccount') }}">Tài khoản</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a></li>
                    </ul>
                </div>
            @else 
                <a type="button" id="btnlogin" href="{{ route('showpagelogin') }}">Login</a>
                <a type="button" id="btnregister" href="{{ route('showpageregister') }}">Register</a>
            @endif
            </div>

        </div>
    
        <div class="row pt-4 pb-3" style="position: relative">
               
            <div class="searchbar logo col-md-2 col-sm-2">
                <a href="{{route('showpagehome')}}"><img src="https://tuoitre.uit.edu.vn/wp-content/uploads/2015/07/logo-uit.png"></a>
            </div>

                <div class="searchbar search col-md-8 col-sm-8 col-12">
                    <form method="GET" action="{{route('showpagesearch')}}" style="width: 100%">    
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search" name="keyword">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit">
                                    <i class="fas fa-search" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div> 
                    </form>                          
                </div>

            <div class="searchbar cart col-md-2 col-sm-2">
                 <a class="btn" type="button" href="{{ route('showpagecart') }}">
                    <i class="bi bi-cart3"></i>
                    <span class="cartbubble"> 
                        {{Cart::count()}}
                    </span>
                </a> 
            </div>
        </div>             
    </div>
</header>

<main>
@yield('content')
</main>

<div class="footer">
    <div class="container p-0 my-4 socialfooter" style="background-color: #f2f2f2; position: relative;">
        <div style="display: flex; justify-content: center; width: 100%;">
            <div class="row pt-5 gx-0" style="width: 100%; justify-content: space-evenly; margin-left: auto; margin-right: auto;">
                <div class="footercol col-lg-5 col-md-6 order-lg-1 order-md-2">
                    <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <a class="btn" href="">Product</a>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <a class="btn" href="">Features</a>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <a class="btn" href="">Resources</a>
                    </div>
                    </div>
                </div>
                <div class="footercol col-lg-2 col-md-12 order-lg-2 order-md-1 d-flex justify-content-center">
                    <b style="margin-top: 8px;">TRADE</b>
                </div>
                <div class="footercol col-lg-5 col-md-6 order-lg-3 order-md-3">
                    <div class="row">
                    <div class="col-lg-4 col-md-4">             
                        <a class="btn" href="">About</a>
                    </div>
                    <div class="col-lg-4 col-md-4">
                        <a class="btn" href="">Blog</a>  
                    </div>
                     <div class="col-lg-4 col-md-4">
                        <a class="btn" href="">Support</a> 
                    </div>
                    </div>
                </div>                        
            </div>
        </div>

        <div style="display: flex; justify-content: center;">
            <hr>
        </div>

        <div class="container-fluid d-flex justify-content-center">
            <button class="btn"><i class="fab fa-facebook" style="font-size: 40px;" aria-hidden="true"></i></button>
            <button class="btn"><i class="fab fa-instagram" style="font-size: 40px;" aria-hidden="true"></i></button>
            <button class="btn"><i class="fab fa-youtube" style="font-size: 40px;" aria-hidden="true"></i></button>
            <button class="btn"><i class="fab fa-twitter" style="font-size: 40px;" aria-hidden="true"></i></button>
        </div>

        <div class=" pt-1 pb-3 d-flex justify-content-center"> 
            <span>
                ©2021 
                <a class="btn" href="" style="margin-top: -5px;">Privacy - Terms </a> 
            </span>
            
        </div>

    </div>

    <div class="container p-0 pt-4 pb-4 my-4 contactfooter" style="background-color: #f2f2f2; height: 100%">
        <div style="width: 100%; justify-content: center; display: flex; position: relative; margin-left: auto; margin-right: auto; margin-top: 30px;">
        <div class="row gx-1" style=" float: left; margin-left: auto;">
            <div class="contactlinefooter col-md-2"> 
                <b>TRADE</b> 
                ©2021 <br>
                <a class="btn footer" href="">Privacy - Terms </a>
            </div>
            
            <div class="contactlinefooter col-md-3">
                <b>Contact us</b><br>
                <a class="btn footer" href="">Hotline &amp; Online chat</a>
                <a class="btn footer" href="">Help Center</a>
                <a class="btn footer" href="">How to Buy</a>
                <a class="btn footer" href="">Shipping &amp; Delivery</a>
            </div>
            
            <div class="contactlinefooter col-md-2">
                <b>Features</b><br>
                <a class="btn footer" href="">Feature</a>
                <a class="btn footer" href="">Feature</a>
                <a class="btn footer" href="">Feature</a>           
            </div>             

            <div class="contactlinefooter col-md-2">
                <b>Resources</b><br>
                <a class="btn footer" href="">Resource</a>
                <a class="btn footer" href="">Resource</a>
                <a class="btn footer" href="">Resource</a>               
            </div>

            <div class="contactlinefooter col-md-2">
                <b>Company</b><br>
                <a class="btn footer" href="">Company</a>
                <a class="btn footer" href="">Company</a>
                <a class="btn footer" href="">Company</a>               
            </div>
            
        </div>
        </div>

    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-migrate-3.3.2.min.js" integrity="sha256-Ap4KLoCf1rXb52q+i3p0k2vjBsmownyBTE1EqlRiMwA=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js" integrity="sha512-XtmMtDEcNz2j7ekrtHvOVR4iwwaD6o/FUJe6+Zq+HgcCsk3kj4uSQQR8weQ2QVj1o0Pk6PwYLohm206ZzNfubg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="public/frontend/js/slick.js">  </script>

</body>

</html>