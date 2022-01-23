<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_review;

class ReviewController extends Controller
{
    function Review(Request $req) {

        $Review= new tbl_review;
        $Review->product_id=$req->product_id;
        $Review->comment=$req->comment;
        $result=$Review->save();
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
