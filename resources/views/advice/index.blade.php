<!-- resources/views/advice/index.blade.php -->

@extends('layouts.app')

@section('content')

<!-- use ur html here -->
<div class="bg-wraper parallax-point-event">
	<br/>
	<div class="container">
		<div class="row-fluid" >
		<!-- FEATURE ITEM-->
		<script>
		$(document).scroll(function() {
			if($(this).scrollTop() > 330){
				 $("#fixedscroll").addClass("bottomfixed");
			}
			else{
				$("#fixedscroll").removeClass("bottomfixed");
			}
			
		});
		</script>

			@include('layouts.sidebar')
			
			<div class="row-fluid" >
				<div class="span12 advicedv">
					<div class="clear10"></div>
					<h2>Advice and guidelines</h2>
					<p>All information, laws, forms, calculators and procedures related to buy, sale and rentals in one place</p>
					<div class="clear10"></div>
					<div class="row">
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice1.png')}}"><br/>
								<span>Buyer<br/>Checklist</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice2.png')}}"><br/>
								<span>Seller<br/>Checklist</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice3.png')}}"><br/>
								<span>Mortgage's<br/>Checklist</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice4.png')}}"><br/>
								<span>Sale Transaction<br/>Fees & Charges</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice5.png')}}"><br/>
								<span>Mortgage<br/>Calculator</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice6.png')}}"><br/>
								<span>RERA<br/>Sale Forms</span>
								</a>
							</div>
						</div>
					</div>
					
					<div class="clear10"></div>
					
					<div class="row">	
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice7.png')}}"><br/>
								<span>Registration<br/>Trustees</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice8.png')}}"><br/>
								<span>RERA Sale Property<br/>Registration</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice9.png')}}"><br/>
								<span>RERA Service<br/>Charge Index - Sale</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice10.png')}}"><br/>
								<span>RERA Sale<br/>Property Laws</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice11.png')}}"><br/>
								<span>Home<br/>Inspection</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice12.png')}}"><br/>
								<span>Seller<br/>Tips</span>
								</a>
							</div>
						</div>
					
					</div>
					<div class="clear10"></div>
					<div class="row">
					
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice13.png')}}"><br/>
								<span>MAKANI<br/>Dubai</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice14.png')}}"><br/>
								<span>Tenant<br/>Checklist</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice15.png')}}"><br/>
								<span>Landloard<br/>Checklist</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice16.png')}}"><br/>
								<span>RERA<br/>Rental Index</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice17.png')}}"><br/>
								<span>RERA Rental<br/>Increase Calculator</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice18.png')}}"><br/>
								<span>RERA Service<br/>Charge Index - Rental</span>
								</a>
							</div>
						</div>
					
					</div>
					<div class="clear10"></div>
					<div class="row">
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice19.png')}}"><br/>
								<span>RERA<br/>Rental Committee</span>
								</a>
							</div>
						</div>
						
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice20.png')}}"><br/>
								<span>RERA Rental<br/>Property Laws</span>
								</a>
							</div>
						</div>
					
						<div class="span2">
							<div class="advicebox">
								<a href="{{ url('/advice/details') }}">
								<img src="{{URL::asset('public/images/advice22.png')}}"><br/>
								<span>Rental<br/>FAQs</span>
								</a>
							</div>
						</div>
					
					</div>
					<div class="clear"></div>
					
					
				</div>
				
			</div>
			
			
			
				
		
		<!-- FEATURE ITEM-->
		
		<!-- FEATURE ITEM-->
		</div><!--/ ROW-FLUID-->
		
	
	
	
	</div><!--/CONTAINER-->
</div>

@endsection