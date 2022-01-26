<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\tbl_verification;

class VerificationController extends Controller
{
    function fileUpload(Request $request){
        // $uploaded_files = $request->file->store('public/uploads/');
       
        $file = new tbl_verification;
        $file->account_name = $request->account_name;
        $file->cnic_number = $request->cnic_number;
        if($request->hasFile("image"))
        {
            $img= $request->bill_picture;
            Image::make($img)->save(storage_path("/app/public/"));
            $file->bill_picture=$img_name;
        }
        $file->account_number = $request->account_number;
        $file->bill_number = $request->bill_number;
        if($request->hasFile("image"))
        {
            $img= $request->bill_picture;
            Image::make($img)->save(storage_path("/app/public/"));
            $file->bill_picture=$img_name;
        }
        $results = $file->save();
        if($results)
        {
            return ["result"=>"Record Added"];
        }
        else
        {
            return ["result"=>"Record Not added"];
        }
    }
}
