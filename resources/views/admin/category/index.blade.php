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
<div class="row text-center pad-top">
	<div class="row col-md-12 custyle" style="margin-left:10px">
        <table class="table table-striped custab">
            <thead>
                <a href="{{route('admin.category.create')}}" class="btn btn-primary btn-xs pull-left"><b>+</b> Add new categories</a>
                <tr>
                    <th class="text-center" style="width:4%">ID</th>
                    <th class="text-center">Category Title</th>
                    <th class="text-center">Category Desc</th>
                    <th class="text-center">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($arCat as $item)
                    <?php
                        $id=$item->id;
                        $cat_name=$item->cat_name;
                        $cat_desc=$item->cat_desc;
                    ?>
                <tr class="deleteclass editclass editclass{{$id}}  deleteclass{{$id}}">
                    <td class="cid" id="{{$id}}">{{$id}}</td>
                    <td class="cat-name">{{$cat_name}}</td>
                    <td class="cat-desc">{{$cat_desc}}</td>
                    <td class="text-center">
                        <a class='btn btn-info btn-xs edit-category' data-toggle="modal" data-target="#editModal"><span class="glyphicon glyphicon-edit"></span> Edit</a> 
                        <a id="{{$id}}" class='btn btn-danger btn-xs delete_category' href="javascript:void(0)"><span class="glyphicon glyphicon-remove"></span> Delete</a> 
                    </td>
                </tr>  
                @endforeach
            </tbody>
        </table>
    </div>
    <div class="modal fade" id="editModal" role="dialog">
        <div class="modal-dialog">
        <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title text-left">Edit Category</h4>
                </div>
                <div class="modal-body">
                <input type="text" name="" hidden class="cid-edit"  value="" placeholder="">
                <div class="form-group">
                    <p class="text-left" style="margin-bottom:0px;margin-top:-10px;"><label>Category Title:</label></p>
                    <input type="text" class="form-control title-edit" >
                </div>
                <div class="form-group">
                    <p class="text-left" style="margin-bottom:0px;margin-top:-10px;"><label>Category Desc:</label></p>
                    <textarea class="form-control desc-edit" name="desccat" style="height:100px;"></textarea>
                </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info btn-edit" data-dismiss="modal">Edit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $(".delete_category").click(function (){
                var parent=$(this).closest('.deleteclass');
                var id=parent.find('.cid').attr('id');
                var tmpclass='.deleteclass'+id;
                swal({
                    title: "Bạn có chắc chắn xóa không ?",
                    text: "",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Có!",
                    cancelButtonText: "Không!",
                    closeOnConfirm: false,
                    closeOnCancel: false
                },
                function(isConfirm){
                    if (isConfirm) {     
                        $.ajax({
                            url:"{{route('admin.category.destroy')}}",
                            type:"GET",
                            data:{'id':id},
                            success: function (data){
                            $(tmpclass).remove();
                            swal("Xóa thành công!", "", "success");
                            }
                        });   
                    }else{
                        swal("Hủy", "", "error");
                    }
                });
            });
            $('.edit-category').click(function(){
                var parent=$(this).closest('.editclass');
                var cid=parent.find('.cid').attr('id');
                var cat_name=parent.find('.cat-name').text();
                var cat_desc=parent.find('.cat-desc').text();
                $('.cid-edit').val(cid);
                $('.title-edit').val(cat_name);
                $('.desc-edit').val(cat_desc);
            });
            $('.btn-edit').click(function(){
                var parent=$(this).parent().parent();
                var cid=parent.find('.cid-edit').val();
                var tmpclass1='.editclass'+cid+' '+'.cat-name';
                var tmpclass2='.editclass'+cid+' '+'.cat-desc';
                var cat_title=parent.find('.title-edit').val();
                var cat_desc=parent.find('.desc-edit').val();
                $.ajax({
                    url:"{{route('admin.category.update')}}",
                    type:"GET",
                    data:{'cid':cid,'cat_title':cat_title,'cat_desc':cat_desc},
                    success: function (data){
                        $(tmpclass1).html(cat_title);
                        $(tmpclass2).html(cat_desc);
                        swal(data, "", "success");
                    }
                });
            });
        });
    </script>
</div>   
<div class="row">
    <div class="col-6">
           {{$arCat->links()}}
    </div>
</div>
</div>
@stop