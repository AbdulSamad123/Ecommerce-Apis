<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_order;

class OrderController extends Controller
{
    function OrderSend(Request $req) {

    $OrderSend= new tbl_order;
    $OrderSend->product_name=$req->product_name;
    $OrderSend->status=$req->status;
    $result=$OrderSend->save();
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

    function Orderhistory($id=null){
        return $id?tbl_order::find($id):tbl_order::all();
    }
}
