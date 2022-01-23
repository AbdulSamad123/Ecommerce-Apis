<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_category;

class CategoryController extends Controller
{
    function Category(Request $req) {

        $Category= new tbl_category;
        $Category->Category_name=$req->Category_name;
        $result=$Category->save();
        if($result)
        {
            return ["result"=>"Data has been Saved"];
        }
        else
        {
            return ["result"=>"Operation Fail"];
        }
    }
}
