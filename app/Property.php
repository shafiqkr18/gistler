<?php

namespace App;
use App\ListingsImages;
use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    //

    protected $table = 'crm_listings';


    /**
     * Get all of the images for the listings.
     */
    public function images()
    {
        return $this->hasMany('App\ListingsImages','listing_id');
    }




     /**
     * Get the category record associated with the listing.
     */
    public function category()
    {
        return $this->hasOne('App\Category');
    }
     /**
     * Get the location record associated with the listing.
     */
    public function location()
    {
        return $this->hasOne('App\Location','loc_id','area_location_id')->select(array('loc_id', 'loc_name','lat','lon'));;
    }

    /**
     * Get the category record associated with the listing.
     */

    public function sublocation()
    {
        return $this->hasOne('App\SubLocation','sub_loc_id','sub_area_location_id')->select(array('sub_loc_id', 'sub_sub_loc'));;
    }
}
