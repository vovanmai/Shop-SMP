<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Model\Category;
use App\Http\Requests\CategoryRequest;
class CategoryController extends Controller
{
    public function index(){
    	$arCat=Category::orderBy('id','ASC')->paginate(5);
    	return view('admin.category.index',['arCat'=>$arCat]);
    }
    public function create(){
    	return view('admin.category.create');
    }
    public function store(CategoryRequest $request){
        $cat_name=$request->name;
    	$cat_desc=$request->desc;
        $arCat = array(
            'cat_name' =>$cat_name, 
            'cat_desc' =>$cat_desc
            );
        if(Category::insert($arCat)){
            $request->session()->flash('msg','Category '.$cat_name.' is sucessfully created');
            return redirect()->route('admin.category.index');
        }else{
            $request->session()->flash('msg','There were an error, please try again!');
            return redirect()->route('admin.category.index');
        }
    }
    public function edit($id){
        $arCat=Category::find($id);
        return view('admin.category.edit',['arCat'=>$arCat]);
    }
    public function update(Request $request){
        if($request->ajax()){
            $cid=$request->get('cid');
            $cat_title=$request->get('cat_title');
            $cat_desc=$request->get('cat_desc');
            $arCat=Category::find($cid);
            $arCat->cat_name=$cat_title;
            $arCat->cat_desc=$cat_desc;
            if($arCat->update()){
                return 'Sửa thành công !';
            }
        }  
    }
    public function destroy(request $request){
        if($request->ajax()){
            $id=$request->get('id');
            $arCat=Category::find($id);
            if($arCat->delete()){
                return "Xóa thành công";
            }
        }
    }
}
