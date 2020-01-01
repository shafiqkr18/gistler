<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ListingsImages extends Model
{
     protected $table = 'crm_listings_images';


     /**
     * Get the listing that owns the images.
     */
    public function listing()
    {
        return $this->belongsTo(Property::class);
    }
}
