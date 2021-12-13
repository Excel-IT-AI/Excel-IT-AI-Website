<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\MediaHelper;
use App\Http\Controllers\Controller;
use App\Http\Requests\MediaRequest;
use App\Http\Resources\MediaResource;
use App\Models\Media;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class MediaController extends Controller
{
    //media list view
    public function index(){
        $mediaList  = MediaHelper::list();
        return response()->json(compact('mediaList'));
    } // end method

    //media single  view
    public function show(Media $media){
        // serialize media  data
        // dd($media);
        $mediaDetails = new MediaResource($media);
        return response()->json(compact('mediaDetails'));
    }//end method

    //media add  method
    public function store(MediaRequest $request){
        $mediaData = $this->getData($request);

        //if request has profile photo then upload
        if($request->hasFile('media_image') && $request->media_image->isValid()){
            //save upload image via function which will return image name
            $image_new_name = $this->makeUploadImage($request->media_image,
            'images/media/');

            //then add new Image name to array
            $mediaData['media_image'] = $image_new_name;
        }
        try{
            //save new media
            Media::create($mediaData);
            //then send success response
            return response()->json(['success'=>"Media has been Successfully Added"]);
        }
        catch(\Exception $e){
            // if any error occured then send error response
            return response()->json(['error'=>$e->getMessage()],500);
        }

    } //end method


    //Software Developer update method
    public function update(MediaRequest $request,Media $media){
        if(!$media){
            return response()->json(['error'=>"Media Data Not Found"],404);
        }
        try{
            // get software request data
            $mediaData = $this->getData($request);
            //if request has profile photo then upload
            if($request->hasFile('media_image') && $request->media_image->isValid()){
                if(file_exists(public_path('images/media/'.$media->media_image))){
                    unlink(public_path('images/media/'.$media->media_image));
                }
                //save upload image via function which will return image name
                $image_new_name = $this->makeUploadImage($request->media_image,'images/media/');
                //then add image name to array
                $mediaData['media_image'] = $image_new_name;
            }
            else{
                //else add previous image to array
                $mediaData['media_image'] = $media->media_image;
            }

            //update single media  data
            $media->update($mediaData);
            //then send success response
            return response()->json(['success'=>"Media has been updated successfully!"]);
        }catch(\Exception $e){
            return response()->json(['error'=>$e->getMessage()],500);
        }
    }//end method

     // for uploading image method
    private function makeUploadImage($image,$path){
        //get upload image extension
        $extension      = $image->getClientOriginalExtension();
        //create new image name
        $image_new_name = time()."_media_".'.'.$extension;
        $image_resize   = Image::make($image->getRealPath())->resize(200,200);
        $image_resize->save(public_path($path.$image_new_name));

        //then return image;
        return $image_new_name;
    }//end method

    // get request data for add or update as refactor
    private function getData(Request $request){
        return  array(
            'media_title'  => $request->input('media_title'),
            'media_link'   => $request->input('media_link'),
            'media_link_name'   => $request->input('media_link_name'),
        );
    }//end method



    // media  delete method
    public function destroy(Media $media){
        try{
            //delete single media via id
            // Media::where('id',$media_id)->first()->delete();
            $media->delete();
            return response()->json(['success'=>"Media has been Deleted successfully!"]);
        }catch(\Exception $e){
            //if any error occured then send error response
            return response()->json(['error'=>$e->getMessage()],500);
        }

    } // end method
}