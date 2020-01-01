<?php

namespace App\Http\Controllers;

use Request;

use App\Http\Requests;
use App\Repositories\HomeServicesRepository;

class HomeServices_MapController extends Controller
{

	 protected $services_list;
    public function __construct(HomeServicesRepository $services_list)
    {
        $this->services_list = $services_list;
    }

	public function map(Request $request)
    {
    	return view('homeservices.map',[
            'title' => 'Home services',
        ]);
    }



    public function getData_Map() {
    	$input = Request::all();
    	if(Request::isMethod('post') && Request::ajax()) {
    		$hs_list = $this->services_list->getHomeServices();
    		$returnHTML = view('homeservices.mapcontents')->with('servicesMap', $hs_list)->render();
		    $returnHTML_list = view('homeservices.listcontents')->with('servicesList', $hs_list)->render();
			return response()->json(array('success' => true, 'map_data'=>$returnHTML,'list_data'=>$returnHTML_list));

		 }
    }


    public function list_view(Request $request)
    {
    	return view('homeservices.list',[
            'title' => 'Home services',
        ]);
    }
    

    public function getData_List() {
        $input = Request::all();
        if(Request::isMethod('post') && Request::ajax()) {
            $hs_list = $this->services_list->getHomeServices();
            $returnHTML_list = view('homeservices.listview')->with('servicesList', $hs_list)->render();
            return response()->json(array('success' => true, 'list_data'=>$returnHTML_list));

         }
    }
    
    public function getCompany($id)
    {
        $input = Request::all();
        if($id) {
        return view('homeservices.details',[
            'hsList' => $this->services_list->getCompany($id),
        ]);
    }
    }
}
