<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Helpers\MediaHelper;
class MediaController extends Controller
{
   //media list view
   public function index(){
        $mediaList  = MediaHelper::list();
        return response()->json(compact('mediaList'));
   }
}
