<?php

namespace App\Repositories;

use App\User;
use App\Property;
use DB;

class PropertiesRepository
{
    /**
     * Get all of the Properties data.
     *
     * @param  User  $input
     * @return Collection
     */
    
    public function getListingsData($request)
    {  
      //DB::enableQueryLog();         //uncomment this line if you need to check query

      //set where condition now
      $matchThese = $this->setWhere($request);



     /**
      write you query here
     */


      $listings = Property::with('images','location','sublocation')
      ->where($matchThese)
      ->get();



      //print_r(DB::getQueryLog());       // uncomment this line if you need to see query
     //dd($listings);                      // uncomment this line if you need result array



      return $listings;
    }
    


    public function getListing($id)
    {
        return Property::find($id);
    }

  function setWhere($request)
    {
      /**
      set your where condition here
     */
         //$matchThese = ['is_active' => 1, 'type' => $input['type'],];

            $matchThese = ['is_active' => 1];           // set the default parameters first

            if($request->has('type'))
            {
               $matchThese = array_add( $matchThese, 'type', $request->type); 
            }

            if($request->has('category_id'))
            {
               $matchThese = array_add( $matchThese, 'category_id', $request->category_id); 
            }

            return $matchThese;
    }

}