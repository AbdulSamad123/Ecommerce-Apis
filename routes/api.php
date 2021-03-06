<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\InfoController;
use App\Http\Controllers\VerificationController;
use App\Http\Controllers\ForgotPasswordController;
// use App\Http\Controllers\OrderController;
// use App\Http\Controllers\CategoryController;
// use App\Http\Controllers\SubCategoryController;
// use App\Http\Controllers\ReviewController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

  //for Post

  Route::post("SingUp",[UserController::class,'SingUp']);

  Route::post("login",[UserController::class,'login']);

  Route::post("password",[ForgotPasswordController::class,'password']);

  Route::post("bank",[ProductController::class,'bank']);

  Route::post("info",[InfoController::class,'info']);

  Route::put("update/{id}",[InfoController::class,'update']);

  Route::post("fileUpload",[VerificationController::class,'fileUpload']);

  Route::get("banklist/{id?}",[ProductController::class,'banklist']);

  // Route::post("OrderSend",[OrderController::class,'OrderSend']);

  // Route::post("Category",[CategoryController::class,'Category']);

  // Route::post("SubCategory",[SubCategoryController::class,'SubCategory']);

  // Route::post("Review",[ReviewController::class,'Review']);

  //For Get

  // Route::get("profile/{id?}",[UserController::class,'profile']);

  // Route::get("Productdetail/{id?}",[ProductController::class,'Productdetail']);

  // Route::get("Orderhistory/{id?}",[OrderController::class,'Orderhistory']);

  //For Update

  // Route::put("editprofile",[UserController::class,'editprofile']);





