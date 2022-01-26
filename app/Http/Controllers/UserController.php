<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_user;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    //For Post

    function SingUp(Request $req) {
    
        $SingUp= new tbl_user;
        $SingUp->name=$req->name;
        $SingUp->email=$req->email;
        $SingUp->phone_number=$req->phone_number;
        $SingUp->password=Hash::make($req->password);
        $SingUp->con_password=Hash::make($req->con_password);
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
    
        $abc= tbl_user::find($req->id);
        $abc->name=$req->name;
        $abc->email=$req->email;
        $abc->phone_number=$req->phone_number;
        $abc->password=$req->password;
        $abc->con_password=$req->con_password;
        $result=$abc->save();
        if($result)
        {
            return ["result"=>"Data has been Update"];
        }
        else
        {
            return ["result"=>"Operation Fail"];
        }
    }

    function login(Request $req)
    {
        $user =tbl_user::where('email',$req->email)->first();
        if(!$user || !Hash::check($req->password,$user->password))
        {
            return response([
                'error'=>["Email or password is not matched"]
            ]);
        }

        return $user;
    }
    
}
