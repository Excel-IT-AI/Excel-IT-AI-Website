<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ManagementRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {

        $rules = [
            'name'          => 'required',
            'designation'   => 'required',
            'email'         => 'required',
            'phone_number'  => 'required|regex:/^([0-9]*)$/|digits:11'
         ];
        if(!isset($this->id) && empty($this->id)){
           $rules['profile_photo']  = 'required|image|mimes:jpg,jpeg,png';
        }
        return $rules;
    }
}