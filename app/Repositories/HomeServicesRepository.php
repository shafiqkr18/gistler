<?php

namespace App\Repositories;

use App\User;
use App\HomeService;
use DB;

class HomeServicesRepository
{
    /**
     * Get all of the HomeService data.
     *
     * @param  User  $user
     * @return Collection
     */
    // public function getHomeServices()
    // {
    //     return HomeService::where('is_active', 1)
    //                 ->orderBy('created_at', 'asc')
    //                 ->get();
    // }

    public function getHomeServices()
    {  
     
       return DB::table('homeservices')->where('is_active', 1)->get();
       
    }
    public function getCompany($id)
    {
        return HomeService::find($id);
    }
}