<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class MediaRequest extends FormRequest
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
        // dd($this->all());

        $rules = [
            'media_image'        => 'required|image|mimes:jpg,png,jpeg',
            'media_title'        => 'required|regex:/[a-zA-Z ]+/',
            'media_link'         => ['required','regex:/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i'],
            'media_link_name'   => 'required|regex:/[a-zA-Z ]+/'
        ];
        return $rules;
    }
}