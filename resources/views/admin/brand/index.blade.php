@extends('templates.admin.master')
@section('main-content')
<div class="row">
    <div class="col-lg-12">
        <h2>Brand Management</h2>   
    </div>
</div>              
<!-- /. ROW  -->
<hr />
@include('errors.message')
<!-- /. ROW  --> 
<div class="row">
    <div class="col-md-12" >
        <div style="padding-left: 15px;padding-bottom:15px;">   
            <a href="{{route('admin.brand.create')}}" class="btn btn-info">Add Brand</a>
        </div>
    </div>
     <div class="col-md-12" >
        <div class="panel panel-default" style="margin-left:15px; margin-right:15px;">
              <div class="panel-heading text-left" ><b><i>Brand List</i></b></div>
                <div class="panel-body">
                <table class="table table-striped table-bordered table table-hover" id="mydata">
                  <thead>
                      <tr>
                          <th class="text-center">ID</th>
                          <th class="text-center">Brand Title</th>
                          <th class="text-center">Brand Desc</th>
                          <th class="text-center">Action</th>
                          
                      </tr>
                  </thead>

                  <tbody>
                       @foreach($arBrands as $item)
                          <?php
                              $id=$item->id;
                              $brand_name=$item->brand_name;
                              $brand_desc=$item->brand_desc;
                              $urlDel=route('admin.brand.destroy',['id'=>$id]);
                              $urlEdit=route('admin.brand.update',['id'=>$id]);
                          ?>
                      <tr>
                          <td>{{$id}}</td>
                          <td>{{$brand_name}}</td>
                          <td>{{$brand_desc}}</td>
                          <td class="text-center">
                          <a class='btn btn-info btn-xs' href="{{$urlEdit}}"><span class="glyphicon glyphicon-edit"></span> Edit</a> 
                          <a class='btn btn-danger btn-xs' onclick="return confirm('Are you sure to delete ? ');"  href="{{$urlDel}}"><span class="glyphicon glyphicon-remove"></span> Delete</a> 
                          </td>
                      </tr>
                      @endforeach
                   

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
