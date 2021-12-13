<?php

use App\Http\Resources\AdminProfileResource;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



// Route::post('/admin/login',[AdminLoginController::class,'login']);
Route::get('/admin/{path}',function(){
    return view('layouts.admin');
})->where('path','.*');


Route::get('{path}', function(){
    return view('layouts.app');
})->where('path','[^admin]*.*');