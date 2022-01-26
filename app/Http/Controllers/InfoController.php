<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_basic;

class InfoController extends Controller
{
     //For Post

     function info(Request $req) {
    
        $basic= new tbl_basic;
        $basic->name=$req->name;
        $basic->phone=$req->phone;
        $basic->city=$req->city;
        $result=$basic->save();
        if($result)
        {
            return ["result"=>"Data has been Saved"];
        }
        else
        {
            return ["result"=>"Operation Fail"];
        }
    }

    function update(Request $req, $id) {
    
        $basic=tbl_basic::find($id);
        if($basic){
            $basic->name=$req->name;
            $basic->phone=$req->phone;
            $basic->city=$req->city;
            $basic->update();
            
            return ["result"=>"Data has been Saved"];
        }
        else
        {
            return ["result"=>"Operation Fail"];
        }
    }
}
