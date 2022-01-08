@extends('admin_layout')
@section('admin_content')
<div class="row">
    <div class="col-lg-12">
        <section class="panel">
            <header class="panel-heading">
                Cập nhật trạng thái đơn hàng
            </header>
            <?php
            $message = Session::get('message');
            if($message){
            echo '<span class="text-alert">'.$message.'</span>';
            Session::put('message',null);
            }
            ?>
            <div class="panel-body">
                @foreach($edit_order_product as $key => $edit_value)
                <div class="position-center">
                    <form role="form" action="{{URL::to('/update-order-product/'.$edit_value->order_id)}}" method="post">
                        {{ csrf_field() }}
                        <div class="form-group">
                            <label for="exampleInputEmail1">Trạng thái đơn hàng</label>
                            <input type="text" value="{{$edit_value->order_status}}" name="order_status" class="form-control" id="exampleInputEmail1">
                       </div>                      
                        <button type="submit" name="update_order_product" class="btn btn-info">Cập nhật</button>
                    </form>
                </div>
                @endforeach
            </div>
        </section>
    </div>
    @endsection