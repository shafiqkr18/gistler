<?php

namespace App\Repositories;

use App\User;
use App\Agency;
use DB;

class AgenciesRepository
{
    /**
     * Get all of the agencies data.
     *
     * @param  User  $user
     * @return Collection
     */
    

    public function getAgencies()
    {  
     
      
     return  $users = DB::table('crm_profile')
      ->get();
       
    }
    public function getAgency($id)
    {
        return Agency::find($id);
    }

    public function getAgentsbyAgency($id)
    {
        return  $users = DB::table('crm_users')
        ->where('client_id', $id)
        ->get();
    }
}