<?php

namespace App\Http\Controllers;

use Request;

use App\Http\Requests;
use App\Repositories\TestRepository;

class TestController extends Controller
{
    // your construct code here
    protected $test;
    public function __construct(TestRepository $test)
    {
        $this->test = $test;
    }

    public function index(Request $request)
{
	return view('test.test',['propertiesList' =>  $this->test->getListingsData()]);
}

}
