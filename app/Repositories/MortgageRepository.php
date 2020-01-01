<?php

namespace App\Repositories;

use App\User;
use App\Mortgage;
use DB;

class MortgageRepository
{
    /**
     * Get all of the mortgage data.
     *
     * @param  User  $user
     * @return Collection
     */
    public function getMortgage()
    {
        return Mortgage::where('is_active', 1)
                    ->orderBy('created_at', 'asc')
                    ->get();
    }

    public function getMortgageById($ids)
    {  
     
       return DB::table('mortgages')->whereIn('id', $ids)->get();
       
    }
}