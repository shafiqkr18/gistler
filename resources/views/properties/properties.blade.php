@extends('layouts.listings')

@section('content')

<style>
	.infobox-wrapper {
		visibility:hidden;
	}
	
	
	.infoBox{width:250px!important; background:url('{{ asset('images/tipbox.png') }}')!important; background-repeat:no-repeat; margin-top:-220px;}

	.infoBox > img{
		margin-left:-30px!important;
		    margin: 8px 23px 2px 2px!important;
	}
	.infobox_inner {
		width:200px;
		height:173px;
		margin-bottom: 8px;
		background:#fff;
		color:#FFF;
		padding: .5em;
		-webkit-border-radius: 2px;
		-moz-border-radius: 2px;
		border-radius: 2px;
		overflow:auto;
	}
	
	
	.infobox_inner::-webkit-scrollbar {
		width: 7px;
	}
	 
	.infobox_inner::-webkit-scrollbar-track {
		
	}
	 
	.infobox_inner::-webkit-scrollbar-thumb {
	  background-color: darkgrey;
	  
	}
	
	
	.infoBox{opacity:1!important;}
	.sliderdv{height:173px;}
	.sliderimg{height:100%;}
	.lSSlideOuter{height:100%;}
	.lSSlideWrapper{height:100%;}

	</style>
    <style>
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
		width:100%;
      }
      #map2 {
        height: 380px;
		max-width:100%;
		width:900px;
		position: absolute;
      }
    </style>
	
	
<div class="sliderlisting list_overmap" id="content-l"></div>
<div id="map_hs" style="height: 95% width:100%"></div>

<!-- <iframe src="map_filtration.php" height="95%" width="100%" scrolling="no" frameborder="0" style="border:0" allowfullscreen></iframe> -->

	<!-- add your js files here -->
			<script src="{{URL::asset('public/js_module/common.js')}}"></script> 
 			<script src="{{URL::asset('public/js_module/listings.js')}}"></script> 

 			






@endsection