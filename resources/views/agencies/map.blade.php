<!-- resources/views/agencies/map.blade.php -->

@extends('layouts.agencies')

@section('content')
			<div class="sliderlisting2 list_overmap" id="content-l">
			
				
			</div>
			<div id="map_hs" style="height: 95% width:100%"></div>
					
			
			<!-- add your js files here -->
			<script src="{{URL::asset('public/js_module/common.js')}}"></script> 
 			<script src="{{URL::asset('public/js_module/agencies.js')}}"></script> 
@endsection