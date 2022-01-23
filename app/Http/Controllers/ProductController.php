<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_product;

class ProductController extends Controller
{
     //For Post

     function Product(Request $req) {
    
        $Product= new tbl_product;
        $Product->product_name=$req->product_name;
        $result=$Product->save();
        if($result)
        {
            return ["result"=>"Data has been Saved"];
        }
        else
        {
            return ["result"=>"Operation Fail"];
        }
    }

    //For Get
   
    function productdetail($id=null){
        return $id?tbl_product::find($id):tbl_product::all();
    }

}
