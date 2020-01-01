
			<!-- resources/views/agents/map.blade.php -->

@extends('layouts.agents')

@section('content')
			<div class="sliderlisting2 list_overmap" id="content-l">
			
				
			</div>
			<div id="map_hs" style="height: 95% width:100%"></div>
					
			<!-- <iframe src="map_filtration.php" height="95%" width="100%" frameborder="0" scrolling="no" frameborder="0" style="border:0" allowfullscreen></iframe> -->

			<!-- add your js files here -->
			<script src="{{URL::asset('public/js_module/common.js')}}"></script> 
 			<script src="{{URL::asset('public/js_module/agents.js')}}"></script> 
@endsection