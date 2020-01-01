<?php

namespace App\Repositories;

use App\User;
// use App\Property;
use DB;

class TestRepository
{
  

    public function getListingsData()
    {  
     DB::enableQueryLog();
      
     return $listings = DB::table('crm_listings as l')
            ->leftJoin('crm_location as loc', 'l.area_location_id', '=', 'loc.loc_id')
             ->leftJoin('crm_listings_images as m', 'l.id', '=', 'm.listing_id')
            ->select('l.id','l.name', 'loc.lat', 'loc.lon','m.image')
      ->get();
       dd(DB::getQueryLog());
    }
   
}