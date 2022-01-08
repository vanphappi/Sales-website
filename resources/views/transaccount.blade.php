<body>
    @extends('account')
    @section('myaccount')
    <div class="col-lg-9 col-md-12 content-choice-details" style="background-color: #B4EDFF">
        <div class="content">
            <div class="title-choice-details">
                <h3>Tất cả</h3>
            </div>
            @foreach ($orderinfo as $order)
            <div class="container-user-details" style="background-color: #B4EDFF;">
                <div class="container-cart">
                    <div class="row cart-title">
                        <div class="col-5"> <div class=" text-ten"> <i class="fas fa-store" aria-hidden="true"></i>{{$order->nhacungcap}}</div></div>
                        <div class="col-7"><div class="text-tinhtrang"> <i class="fas fa-truck" aria-hidden="true"></i>{{$order->trangthaidonhang}}</div></div>
                    </div>
                    <div class="break-line"> </div>
                    <div class="cart-detail">
                        <div class="row">
                            <div class="col-md-3 col-sm-4 voucher-img">
                                <img src="{{asset('public/frontend/img/product/'.$order->hinhanh)}}" width="100%" class="col-sm-2 img-sanpham">
                            </div>
                            <div class="col-md-9 col-sm-8 voucher-info">
                                <div class="text-tensp">{{$order->tensanpham}}</div>
                                <div class="text-loaisp"> {{$order->loaisanpham}}</div>
                                <div class="text-sl"> X{{$order->soluong}}</div>
                                <div class="text-dongia">{{$order->gia}}đ</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-user-details">
                <div class="container-cart" style="background: #FEACB8DB">
                    <div class="text-tongtien"> Tổng số tiền: {{$order->gia*$order->soluong}}đ</div>
                    <div class="row linedanhgia">
                        <div class="col-sm-4 col-5 text-ttdanhgia"> Trạng thái đánh giá </div>
                        <div class="col-sm-8 col-7">
                            <div class="row" style="">
                                <div class="col-md-4"><button class="btn-mualai"> Mua lại </button></div>
                                <div class="col-md-4"><button class="btn-lienhe"> Liên hệ shop </button></div>
                                <div class="col-md-4"><button class="btn-chitiet" onclick="location.href='{{route ('showpagetrackorders', $order->iddonhang) }}'"> Chi tiết </button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="break-line"> </div>
            @endforeach
        </div>
    </div>
</div>
</div>
@endsection