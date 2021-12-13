<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MediaResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'id'         =>$this->id,
            'media_image' => asset('images/media/'.$this->media_image),
            'media_title' => $this->media_title,
            'media_link' => $this->media_link,
            'media_link_name' => $this->media_link_name,
        ];
    }
}