@extends('templates.admin.master')
@section('main-content')
<div class="row">
    <div class="col-lg-12">
        <h2>User Management</h2>   
    </div>
</div>              
<!-- /. ROW  -->
<hr />
@include('errors.message')
@include('errors.warning')
@include('errors.error')
<!-- /. ROW  --> 
<div class="row">
    <div class="col-md-12" >
        <div style="padding-left: 15px;padding-bottom:15px;">   
            <a href="{{route('admin.user.create')}}" class="btn btn-info">Add User</a>
        </div>
    </div>
     <div class="col-md-12" >
        <div class="panel panel-default" style="margin-left:15px; margin-right:15px;">
              <div class="panel-heading text-left" ><b><i>User List</i></b></div>
                <div class="panel-body">
                <table class="table table-striped table-bordered table table-hover" id="mydata">
                  <thead>
                      <tr>
                        <th class="text-center" style="width:4%">ID</th>
                        <th class="text-center">Username</th>
                        <th class="text-center">Fullname</th>
                        <th class="text-center" style="width:20%">Address</th>
                       
                        <th class="text-center">Phone</th>
                        <th class="text-center">Avatar</th>
                        <th class="text-center">Level (ACL)</th>
                        <th class="text-center" style="width: 200px;">Action</th>
                    </tr>
                  </thead>

                  <tbody>
                       @foreach($arUser as $item)
                <?php
                    $id=$item->id;
                    $username=$item->username;
                    $name=$item->name;
                    $address=$item->address;
                  
                    $phone=$item->phone;
                    $avatar=$item->avatar;
                    $level=$item->level;
                    $urlEdit=route('admin.user.edit',['id'=>$id]);
                    $urlDel=route('admin.user.destroy',['id'=>$id]);
                    
                    if($level==1){
                        $level1="Admin";
                    }else if($level==2){
                        $level1="Moderator";
                    }else{
                        $level1="Member";
                    }

                ?>
            <tr>
                <td>{{$id}}</td>
                <td>{{$username}}</td>
                <td>{{$name}}</td>
                <td>{{$address}}</td>
               
                <td>{{$phone}}</td>
                <td>
                    @if($avatar!='')
                     <img style="width:100px;height:auto" src="{{url('storage/app/avatar/'.$avatar)}}"/>
                    @else
                        No avatar image 
                    @endif
                </td>
                <td>{{$level1}}</td>
                <td class="text-center">
                <a class='btn btn-info btn-xs' href="{{$urlEdit}}"><span class="glyphicon glyphicon-edit"></span> Edit</a>
                @if($username!='admin')
                <a class='btn btn-danger btn-xs' onclick="return confirm('Are you sure to delete ? ');"  href="{{$urlDel}}"><span class="glyphicon glyphicon-remove"></span> Delete</a> 
                @endif
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
