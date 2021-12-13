<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Resources\OrganogramResource;
use App\Models\Organogram;
use Illuminate\Http\Request;

class OrganogramController extends Controller
{
   //Frontend list view
   public function getOrganogram(){
    $organogram = new OrganogramResource(Organogram::first());
    return response()->json(compact('organogram'));
} // end method
}