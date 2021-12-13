<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Resources\OrganogramResource;
use App\Models\Organogram;
use Exception;
use Illuminate\Http\Request;
use Intervention\Image\Facades\Image;

class OrganogramController extends Controller
{
     //Slider list view
     public function index(){
        $organogramlist = OrganogramResource::collection(Organogram::get());
        return response()->json(compact('organogramlist'));
    } // end method



     //Management single  view
     public function show($id){
        //get single Management via id
        $managementDetails = Organogram::find($id);
        $managementDetails->image=asset('images/organogram/'.$managementDetails->image);

        return response()->json(compact('managementDetails'));
    }//end method

    //Organogram Add  method
    public function store(Request $request){

        $request->validate([
            'image'   => 'required|image|mimes:jpg,jpeg,png'
        ]);

        //get slider data from getData function
        $organogramData =array();

        //if request has profile photo then upload
        if($request->hasFile('image') && $request->image->isValid()){
            //get uploaded image name
            $image_new_name = $this->makeUploadImage($request->image,'images/organogram/');

            //add image name to slider data array
            $organogramData['image'] = $image_new_name;
        }
        try{
            //create new slider
            Organogram::create($organogramData);
            //then return success response
            return response()->json(['success'=>"Organogram has been Successfully Added"]);
        }
        catch(Exception $e){
            //if any error occured then send response as error
            dump($e->getMessage());
            return response()->json(['error'=>"Some Error Occured Please Try Again!"],500);
        }

    } //end method


    //Slider update method
    public function update(Request $request,$organogram_id){

        $request->validate([
            'image'   => 'required|image|mimes:jpg,jpeg,png'
        ]);
        //get organogram via id
        $organogram  = Organogram::find($organogram_id);

        //if organogram not found then show error
        if(!$organogram){
            return response()->json(['error'=>"Organogram Data Not Found"],404);
        }
        try{

            //organogram array
            $organogramData =array();

            //if request has slider_img  then upload
            if($request->hasFile('image') && $request->image->isValid()){
                if(file_exists(public_path('images/organogram/'.$organogram->image))){
                    unlink(public_path('images/organogram/'.$organogram->image));
                }
                //get uploaded image name
                $image_new_name = $this->makeUploadImage($request->image,'images/organogram/');


                //add new image name to array
                $organogramData['image'] = $image_new_name;
            }
            else{
                //otherwise add previous image
                $organogramData['image'] = $organogram->image;
            }

            //update slider data
            $organogram->update($organogramData);

            //then return success response
            return response()->json(['success'=>"Organogram has been updated successfully!"]);
        }catch(Exception $e){
            dump($e->getMessage());

            return response()->json(['error'=>"Some Error Occured Please Try Again!"],500);
        }



    }//end method

    // for uploading image method
    private function makeUploadImage($image,$path){
        //get upload image extension
        $extension     = $image->getClientOriginalExtension();

        //create new image name
        $image_new_name = time()."organogram".'.'.$extension;

        //resize the upload image via Image facades
        $resize_image = Image::make($image->getRealPath())->resize(1920,1080);

        //save resize image in specific path
        $resize_image->save(public_path($path.$image_new_name));

        //then return image;
        return $image_new_name;
    }//end method





    // Organogram  delete method
    public function destroy($organogram_id){
        try{
            //delete slider via id
            $organogram = Organogram::where('id',$organogram_id)->first();
            if(file_exists(public_path('images/organogram/'.$organogram->image))){
                unlink(public_path('images/organogram/'.$organogram->image));
            }
            $organogram->delete();

            //then return success response
            return response()->json(['success'=>"Organogram has been Deleted successfully!"]);

        }catch(Exception $e){
            dump($e->getMessage());
            //if any error occured then return error response
            return response()->json(['error'=>"Some Error Occured Please Try Again!"],500);
        }

    } // end method
}