<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Socialite;
use App\User;
use App\SocialAccountService;
use App\Provider;

class SocialAuthController extends Controller
{
    //

    public function redirect($provider)
	{
	    return Socialite::driver($provider)->redirect();    
	} 
	
	public function callback(SocialAccountService $service, $provider)
	{
	    $user = $service->createOrGetUser(Socialite::driver($provider));

	    auth()->login($user);

	    return redirect()->to('/home');
	}
  
}
