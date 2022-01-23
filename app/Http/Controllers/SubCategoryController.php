<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_subcategory;

class SubCategoryController extends Controller
{
    function SubCategory(Request $req) {

        $SubCategory= new tbl_subcategory;
        $SubCategory->subcategory_name=$req->subcategory_name;
        $SubCategory->maincategory_name=$req->maincategory_name;
        $result=$SubCategory->save();
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
