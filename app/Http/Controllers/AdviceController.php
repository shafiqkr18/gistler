<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class AdviceController extends Controller
{
    public function index(Request $request)
    {
    	return view('advice.index');
    }

    public function details(Request $request)
    {
    	return view('advice.details');
    }
}
