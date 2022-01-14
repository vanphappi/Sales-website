@extends('admin_layout')
@section('admin_content')
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê hóa đơn
    </div>
    <div class="row w3-res-tb">
      
      <div class="col-sm-4">
      </div>
      <div class="col-sm-3">
        <div class="input-group">
          <input type="text" class="input-sm form-control" placeholder="Search">
          <span class="input-group-btn">
            <button class="btn btn-sm btn-default" type="button">Tìm kiếm</button>
          </span>
        </div>
      </div>
    </div>
    <div class="table-responsive">
      <?php
      $message = Session::get('message');
      if($message){
      echo '<span class="text-alert">'.$message.'</span>';
      Session::put('message',null);
      }
      ?>
      <table class="table table-striped b-t b-light">
        <thead>
          <tr>
            <th style="width:20px;">
              <label class="i-checks m-b-none">
                <input type="checkbox"><i></i>
              </label>
            </th>
            <th>Mã đơn hàng</th>
            <th>Tên khách hàng</th>
            <th>Tên nhà cung cấp</th>
            <th>Trạng thái đơn hàng</th>
            <th>Tên sản phẩm</th>
            <th>Số lượng</th>
            <th>Giá</th>
            <th>Hình ảnh</th>
            <th>Chức năng</th>
            
            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
          @foreach($all_order_product as $key => $order)
          <tr>
            <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
            <td>{{ $order->madonhang }}</td>
            <td>{{ $order->tenkhachhang }}</td>
            <td>{{ $order->nhacungcap }}</td>
            <td>{{ $order->trangthaidonhang }}</td>
            <td>{{ $order->tensanpham }}</td>
            <td>{{ $order->soluong }}</td>
            <td>{{ $order->gia }}</td>
            <td><img src="public/frontend/img/product/{{ $order->hinhanh }}" height="100" width="100"></td>
            <td>
              <a href="{{URL::to('/edit-order-product/'.$order->madonhang)}}" class="active styling-edit" ui-toggle-class="">
              <i class="fa fa-pencil-square-o text-success text-active"></i></a>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
  </div>
</div>
@endsection