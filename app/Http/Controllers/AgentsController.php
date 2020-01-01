<?php

namespace App\Http\Controllers;

use Request;

use App\Http\Requests;
use App\Repositories\AgentsRepository;

class AgentsController extends Controller
{
    protected $agents_list;
    public function __construct(AgentsRepository $agents_list)
    {
        $this->agents_list = $agents_list;
    }




    public function map_view(Request $request)
    {
    	return view('agents.map',[
            'title' => 'Agents',
        ]);
    }



    public function getData_Map() {
    	$input = Request::all();
    	if(Request::isMethod('post') && Request::ajax()) {
    		$hs_list = $this->agents_list->getAgents();
    		$returnHTML = view('agents.mapcontents')->with('agentsMap', $hs_list)->render();
		    $returnHTML_list = view('agents.list_overmap')->with('agentsList', $hs_list)->render();
			return response()->json(array('success' => true, 'map_data'=>$returnHTML,'list_data'=>$returnHTML_list));

		 }
    }


    public function grid_view(Request $request)
    {
    	return view('agents.grid',[
            'title' => 'Agents',
        ]);

    }

    public function getData_List() {
        $input = Request::all();
        if(Request::isMethod('post') && Request::ajax()) {
            $hs_list = $this->agents_list->getAgents();
            $returnHTML_list = view('agents.listview')->with('agentsList', $hs_list)->render();
            return response()->json(array('success' => true, 'list_data'=>$returnHTML_list));

         }
    }

    public function getAgent($id)
    {
        $input = Request::all();
        if($id) {
        return view('agents.details',[
            'hsList' => $this->agents_list->getAgent($id),
        ]);
    }
    }
}
