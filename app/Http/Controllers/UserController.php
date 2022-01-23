<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_user;

class UserController extends Controller
{
    //For Post

    function SingUp(Request $req) {
    
        $SingUp= new tbl_user;
        $SingUp->name=$req->name;
        $SingUp->email=$req->email;
        $SingUp->password=$req->password;
        $result=$SingUp->save();
        if($result)
        {
            return ["result"=>"Data has been Saved"];
        }
        else
        {
            return ["result"=>"Operation Fail"];
        }
    }

    function profile($id=null){
        return $id?tbl_user::find($id):tbl_user::all();
    }

    function editprofile(Request $req) {
    
        $editprofile= tbl_user::find($req->id);
        $editprofile->name=$req->name;
        $editprofile->email=$req->email;
        $editprofile->password=$req->password;
        $result=$editprofile->save();
        if($result)
        {
            return ["result"=>"Data has been Update"];
        }
        else
        {
            return ["result"=>"Operation Fail"];
        }
    }
    
}
