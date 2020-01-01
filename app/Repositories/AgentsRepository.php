<?php

namespace App\Repositories;

use App\User;
use App\Agent;
use DB;

class AgentsRepository
{
    /**
     * Get all of the HomeService data.
     *
     * @param  User  $user
     * @return Collection
     */
    

    public function getAgents()
    {  
     
      
     return  $users = DB::table('crm_users')
            ->leftJoin('crm_profile', 'crm_users.client_id', '=', 'crm_profile.id')
            ->select('crm_users.*', 'crm_profile.lat', 'crm_profile.lon')
            ->get();
       
    }
    public function getAgent($id)
    {
        return Agent::find($id);
    }
}