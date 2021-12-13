<?php
namespace App\Helpers;

use App\Http\Resources\MediaResource;
use App\Models\Media;

class MediaHelper {
    public static  function list(){
        return MediaResource::collection(Media::all());
    } // end method

    // public static function

}

?>