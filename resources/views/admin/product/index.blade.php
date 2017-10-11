@extends('templates.admin.master')
@section('main-content')
<div class="row">
    <div class="col-lg-12">
        <h2>Product Management</h2>   
    </div>
</div>              
<!-- /. ROW  -->
<hr />
@include('errors.message')
<!-- /. ROW  --> 
<div class="row">
    <div class="col-md-12" >
        <div style="padding-left: 15px;padding-bottom:15px;">   
            <a href="{{route('admin.product.create')}}" class="btn btn-info">Add Product</a>
        </div>
    </div>
     <div class="col-md-12" >
        <div class="panel panel-default" style="margin-left:15px; margin-right:15px;">
              <div class="panel-heading text-left" ><b><i>Product List</i></b></div>
                <div class="panel-body">
                <table class="table table-striped table-bordered table table-hover" id="mydata">
                  <thead>
                      <tr>
                          <th class="text-center">ID</th>
                          <th class="text-center">Product Name</th>
                          <th class="text-center">Image</th>
                          <th class="text-center">Price </th>
                          <th class="text-center">Brand</th>
                          <th class="text-center">Category</th>
                          <th class="text-center">Action</th>
                          
                      </tr>
                  </thead>

                  <tbody>
                        @foreach($arProduct as $item)
                        <?php
                            $id=$item->id;
                            $pname=$item->pname;
                            $image=$item->image;
                            $price=$item->price;
                            $picture=$item->picture;
                            $urlEdit=route('admin.product.edit',['id'=>$id]);
                            $urlDel= route('admin.product.destroy',['id'=>$id]);
                        ?>
                     <tr>
                        <td class="text-center">{{$id}}</td>
                        <td class="text-center">{{$pname}}</td>
                        <td class="text-center">
                        @if($picture!='')
                         <img style="width:70px;height:auto" src="{{url('storage/app/imagefiles/'.$picture)}}"/>
                        @else
                            No image
                        @endif
                        </td>
                        <td class="text-center">{{number_format($price)}} VNĐ</td>
                        <td class="text-center">{{ $item->brand->brand_name}}</td>
                        <td class="text-center">{{ $item->category->cat_name}}</td>
                        
                        <td class="text-center">
                        <a class='btn btn-info btn-xs' href="{{ $urlEdit}}"><span class="glyphicon glyphicon-edit"></span> Edit</a> 
                        <a class='btn btn-danger btn-xs' onclick="return confirm('Are you sure to delete ? ');"  href="{{ $urlDel}}"><span class="glyphicon glyphicon-remove"></span> Delete</a> 
                        </td>
                        @endforeach
                     </tr>
                   

                  </tbody>

                  <tfoot>
                    <tr></tr>
                  </tfoot>

                </table>
                </div>
            </div>  
    </div>
</div>   

</div>
@stop
