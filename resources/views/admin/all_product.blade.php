@extends('admin_layout')
@section('admin_content')
<div class="table-agile-info">
  <div class="panel panel-default">
    <div class="panel-heading">
      Liệt kê sản phẩm
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
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Số lượng</th>
            <th>Hình sản phẩm</th>
            <th>Danh mục</th>
            <th>Nhà cung cấp</th>
            <th>Tình trạng</th>
            
            <th style="width:30px;"></th>
          </tr>
        </thead>
        <tbody>
          @foreach($all_product as $key => $pro)
          <tr>
            <td><label class="i-checks m-b-none"><input type="checkbox" name="post[]"><i></i></label></td>
            <td>{{ $pro->product_name }}</td>
            <td>{{ $pro->product_price }}</td>
            <td>{{ $pro->product_quantily }}</td>
            <td><img src="public/frontend/img/product/{{ $pro->product_image }}" height="100" width="100"></td>
            <td>{{ $pro->category_name }}</td>
            <td>{{ $pro->brand_name }}</td>
            <td><span class="text-ellipsis">
              <?php
              if($pro->product_status==0){
              echo 'Còn hàng';
              } else echo 'Hết hàng';
              ?>
            </span></td>
            
            <td>
              <a href="{{URL::to('/edit-product/'.$pro->product_id)}}" class="active styling-edit" ui-toggle-class="">
              <i class="fa fa-pencil-square-o text-success text-active"></i></a>
              <a onclick="return confirm('Bạn có chắc là muốn xóa sản phẩm này ko?')" href="{{URL::to('/delete-product/'.$pro->product_id)}}" class="active styling-edit" ui-toggle-class="">
                <i class="fa fa-times text-danger text"></i>
              </a>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
    </div>
    
  </div>
</div>
@endsection