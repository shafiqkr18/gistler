<?php

namespace App\Http\Controllers;

use Request;

use App\Http\Requests;
use App\Repositories\AgenciesRepository;

class AgenciesController extends Controller
{
    protected $agencies_list;
    public function __construct(AgenciesRepository $agencies_list)
    {
        $this->agencies_list = $agencies_list;
    }





    public function map_view(Request $request)
    {
    	return view('agencies.map',[
            'title' => 'Agencies',
        ]);
    }



    public function getData_Map() {
    	$input = Request::all();
    	if(Request::isMethod('post') && Request::ajax()) {
    		$hs_list = $this->agencies_list->getAgencies();
    		$returnHTML = view('agencies.mapcontents')->with('agenciesMap', $hs_list)->render();
		    $returnHTML_list = view('agencies.list_overmap')->with('agenciesList', $hs_list)->render();
			return response()->json(array('success' => true, 'map_data'=>$returnHTML,'list_data'=>$returnHTML_list));

		 }
    }


    public function grid_view(Request $request)
    {
    	return view('agencies.grid',[
            'title' => 'Agents',
        ]);

    }

    public function getData_List() {
        $input = Request::all();
        if(Request::isMethod('post') && Request::ajax()) {
            $hs_list = $this->agencies_list->getAgencies();
            $returnHTML_list = view('agencies.listview')->with('agenciesList', $hs_list)->render();
            return response()->json(array('success' => true, 'list_data'=>$returnHTML_list));

         }
    }

    public function getAgency($id)
    {
        $input = Request::all();
        if($id) {
        return view('agencies.details',[
            'hsList' => $this->agencies_list->getAgency($id),
            'agentsList' => $this->agencies_list->getAgentsbyAgency($id),
        ]);
    }
    }
}
