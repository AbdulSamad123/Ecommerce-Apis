<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_bank;

class ProductController extends Controller
{
     //For Post

     function bank(Request $req) {
    
        $Product= new tbl_bank;
        $Product->bank_name=$req->bank_name;
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
   
    function banklist($id=null){
        return $id?tbl_bank::find($id):tbl_bank::all();
    }

}
