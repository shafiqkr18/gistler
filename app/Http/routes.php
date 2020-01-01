<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
Route::group(['middleware' => ['web']], function () {

		// to test anything just change this path for urself
		Route::get('test/{type?}', [
		    'as' => 'test', 'uses' => 'TestController@index'
		]);





		Route::get('/', [
		    'as' => '', 'uses' => 'HomeController@index'
		]);

		Route::post('home/get_locationData', [
		    'as' => 'loc', 'uses' => 'HomeController@get_locationData'
		]);


		Route::auth();

		Route::get('/home', 'HomeController@index');

		Route::get('/redirect/{provider}', 'SocialAuthController@redirect');
		Route::get('/callback/{provider}', 'SocialAuthController@callback');


		Route::get('/faq', [
		    'as' => 'Questions', 'uses' => 'FaqController@index'
		]);

		Route::get('advice', [
		    'as' => 'advice', 'uses' => 'AdviceController@index'
		]);

		Route::get('advice/details', [
		    'as' => 'details', 'uses' => 'AdviceController@details'
		]);

		Route::get('mortgage', [
		    'as' => 'mortgage', 'uses' => 'MortgageController@index'
		]);

		Route::post('mortgage/getFilteredData', [
		    'as' => 'getFilteredData', 'uses' => 'MortgageController@getFilteredData'
		]);

		// *********************************homeservices starts from here********************************//
		Route::get('homeservices', [
		    'as' => 'homeservices', 'uses' => 'HomeServices_MapController@map'
		]);
		Route::post('homeservices/getData_Map', [
		    'as' => 'homeservices_map', 'uses' => 'HomeServices_MapController@getData_Map'
		]);
		Route::get('homeservices-list', [
		    'as' => 'homeservices_list', 'uses' => 'HomeServices_MapController@list_view'
		]);
		Route::post('homeservices/getData_List', [
		    'as' => 'homeservices_list', 'uses' => 'HomeServices_MapController@getData_List'
		]);
		Route::get('/homeservices/profile/{id}', 'HomeServices_MapController@getCompany');
		// *********************************homeservices ends here***************************************//

		//************************************ Agents start ********************************************//
		 Route::get('agents', [
		    'as' => 'agents', 'uses' => 'AgentsController@map_view'
		]);  
		Route::post('agents/getData_Map', [
		    'as' => 'agents_map', 'uses' => 'AgentsController@getData_Map'
		]); 
		Route::get('agents-gridview', [
		    'as' => 'agents_gridview', 'uses' => 'AgentsController@grid_view'
		]); 
		Route::post('agents/getData_List', [
		    'as' => 'agents_list', 'uses' => 'AgentsController@getData_List'
		]);
		Route::get('/agents/profile/{id}', 'AgentsController@getAgent');
		//***********************************( end agents )*********************************************//

		// *****************************(agencies start)**********************************************//

		Route::get('agencies', [
		    'as' => 'agencies', 'uses' => 'AgenciesController@map_view'
		]); 

		Route::post('agencies/getData_Map', [
		    'as' => 'agencies_map', 'uses' => 'AgenciesController@getData_Map'
		]); 
		Route::get('agencies-gridview', [
		    'as' => 'agencies_gridview', 'uses' => 'AgenciesController@grid_view'
		]); 
		Route::post('agencies/getData_List', [
		    'as' => 'agencies_list', 'uses' => 'AgenciesController@getData_List'
		]);
		Route::get('/agencies/profile/{id}', 'AgenciesController@getAgency');

		// ******************************(end agencies)*********************************************//

		// ************************properties listings starts**************************************//
		
		Route::get('properties/{type?}', [
		    'as' => 'properties', 'uses' => 'PropertiesController@listings'
		]);
		Route::post('properties/getListingsData', [
		    'as' => 'properties_data', 'uses' => 'PropertiesController@getListingsData'
		]);


		// ************************ properties listings ending ************************************//

		

});

