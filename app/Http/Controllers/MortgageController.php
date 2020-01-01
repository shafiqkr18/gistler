<?php

namespace App\Http\Controllers;

use Request;

use App\Http\Requests;
use App\Repositories\MortgageRepository;


class MortgageController extends Controller
{
    protected $mortgage_list;
    public function __construct(MortgageRepository $mortgage_list)
    {
       

        $this->mortgage_list = $mortgage_list;
    }
    public function index(Request $request)
    {
    	return view('mortgage.index',[
            'mortgageList' => $this->mortgage_list->getMortgage(),
        ]);
    }
    public function getFilteredData() {
    	$input = Request::all();
    	if(Request::isMethod('post') && Request::ajax()) {
    		if($input['userdata']) {
		        $userjobs = $this->mortgage_list->getMortgageById($input['userdata']);

		        $returnHTML = view('mortgage.list')->with('mortgageList', $userjobs)->render();
				return response()->json(array('success' => true, 'html'=>$returnHTML));
			}
	}
    }

}
