@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Cập nhật danh mục sản phẩm
            </header>
            <?php
            $message = Session::get('message');
            if($message){
            echo '<span class="text-alert">'.$message.'</span>';
            Session::put('message',null);
            }
            ?>
            <div class="panel-body">
                @foreach($edit_category_product as $key => $edit_value)
                <div class="position-center">
                    <form role="form" action="{{URL::to('/update-category-product/'.$edit_value->category_id)}}" method="post" enctype="multipart/form-data">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên danh mục</label>
                            <input type="text" value="{{$edit_value->category_name}}" name="category_product_name" class="form-control" id="exampleInputEmail1" >
                            
                            <div class="form-group">
                                <label for="exampleInputPassword1">Mô tả danh mục</label>
                                <textarea style="resize: none" rows="8" class="form-control" name="category_product_desc" id="exampleInputPassword1" >{{$edit_value->category_desc}}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail1">Hình ảnh danh mục</label>
                                <input type="file" name="category_image" class="form-control" id="exampleInputEmail1">
                                <img src="{{URL::to('public/frontend/img/catalog/'.$edit_value->category_image)}}" height="100" width="100">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword1">Tình trạng</label>
                                <select name="category_product_status" class="form-control input-sm m-bot15">
                                    <option value="0">Ẩn </option>
                                    <option value="1">Hiển thị</option>
                                    
                                </select>
                            </div>
                            
                            <button type="submit" name="update_category_product" class="btn btn-info">Cập nhật danh mục</button>
                        </form>
                    </div>
                    @endforeach
                </div>
            </section>
        </div>
        @endsection