<?php


namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Repositories\PropertiesRepository;

class PropertiesController extends Controller
{
    // your construct code here
    protected $listings_list;
    public function __construct(PropertiesRepository $listings_list)
    {
        $this->listings_list = $listings_list;
    }



public function listings(Request $request)
{
	return view('properties.properties',['title' => 'listings',]);
}

public function getListingsData(Request $request)
{
	//$input = Request::all();
	if($request->isMethod('post') && $request->ajax()) {
    	$hs_list = $this->listings_list->getListingsData($request);
        //dd($hs_list);
    	$returnHTML = view('properties.mapcontents')->with('propertiesMap', $hs_list)->render();
		$returnHTML_list = view('properties.list_overmap')->with('propertiesList', $hs_list)->render();
		return response()->json(array('success' => true, 'map_data'=>$returnHTML,'list_data'=>$returnHTML_list));

	}
}
















}
