<!-- resources/views/mortgage/index.blade.php -->

@extends('layouts.mortgage')

@section('content')




<!-- use ur html here -->
<div class="row-fluid">
		<!-- FEATURE ITEM-->
		
		
		
  <ul class="floatingside listside2 list-bottom mortgage" id="fixedscroll">
				<li><a href="#"><img src="{{URL::asset('public/images/side-icon5.png')}}"></a>
					<ul class="mainlength3">
						<li>
							<div class="sectionslide">
								<p><a href="listing.php">View last search</a></p>
							</div>
						</li>
					</ul>
				</li>
				
				<li>
					<a href="#"><img src="{{URL::asset('public/images/side-icon6.png')}}"></a>
					<ul class="mainlength3">
						<li>
							<div class="sectionslide">
								<p><a href="#">Favourite</a></p>
							</div>
						</li>
					</ul>
				</li>
				<li><a href="#"><img src="{{URL::asset('public/images/side-icon7.png')}}"></a>
					<ul class="sociallist">
							<li>
								<div class="sectionslide">
									<a href="http://www.facebook.com/share.php?u=http://adweblab.com/gistler/listing.php&title=Dubai Marina Central Bay" target="popup" onclick="window.open('http://www.facebook.com/share.php?u=http://adweblab.com/gistler/listing.php&title=Dubai Marina Central Bay','name','width=600,height=400')"><img src="{{URL::asset('public/images/facebook2.png')}}"></a>
									<a href="http://twitter.com/intent/tweet?status=Dubai Marina Central Bay+http://adweblab.com/gistler/listing.php" target="popup" onclick="window.open('http://twitter.com/intent/tweet?status=Dubai Marina Central Bay+http://adweblab.com/gistler/listing.php','name','width=600,height=400')" ><img src="{{URL::asset('public/images/twitter2.png')}}"></a>
									<a href="http://www.linkedin.com/shareArticle?mini=true&url=http://adweblab.com/gistler/listing.php&title=Dubai Marina Central Bay&source=http://adweblab.com/gistler/"  target="popup" onclick="window.open('http://www.linkedin.com/shareArticle?mini=true&url=http://adweblab.com/gistler/listing.php&title=Dubai Marina Central Bay&source=http://adweblab.com/gistler/','name','width=600,height=400')"><img src="{{URL::asset('public/images/linkedin2.png')}}"></a><br>
									<a href="https://plus.google.com/share?url=http://adweblab.com/gistler/listing.php" onclick="window.open('https://plus.google.com/share?url=http://adweblab.com/gistler/listing.php','name','width=600,height=400')" target="popup"><img src="{{URL::asset('public/images/googleplus2.png')}}"></a>
									<a href="http://whatsapp.com/" target="popup"><img src="{{URL::asset('public/images/whatsapp.png')}}"></a>
									<a href="mailto:test@gmail.com"><img src="{{URL::asset('public/images/envelop.png')}}"></a>
								</div>
								
							</li>
						</ul>
				</li>
				<li><a href="#"><img src="{{URL::asset('public/images/side-icon4.png')}}"></a>
					<ul class="mainlength">
							<li>
								<div class="sectionslide">
									<p><a href="property-detail.php">1 BR, Giovanni Boutique Suites, SPorts City Studio</a></p>
									<p><small>SPorts CIty, Dubai, United Arab Emirates</small></p>
									<p><small>Monday, 26th November, 2015 - 18;45;15</small></p>
								</div>
								<div class="sectionslide">
									<p><a href="property-detail.php">1 BR, Giovanni Boutique Suites, SPorts City Studio</a></p>
									<p><small>SPorts CIty, Dubai, United Arab Emirates</small></p>
									<p><small>Monday, 26th November, 2015 - 18;45;15</small></p>
								</div>
								<div class="sectionslide">
									<p><a href="property-detail.php">1 BR, Giovanni Boutique Suites, SPorts City Studio</a></p>
									<p><small>SPorts CIty, Dubai, United Arab Emirates</small></p>
									<p><small>Monday, 26th November, 2015 - 18;45;15</small></p>
								</div>
								<div class="sectionslide">
									<p><a href="property-detail.php">1 BR, Giovanni Boutique Suites, SPorts City Studio</a></p>
									<p><small>SPorts CIty, Dubai, United Arab Emirates</small></p>
									<p><small>Monday, 26th November, 2015 - 18;45;15</small></p>
								</div>
								<div class="sectionslide">
									<p><a href="property-detail.php">1 BR, Giovanni Boutique Suites, SPorts City Studio</a></p>
									<p><small>SPorts CIty, Dubai, United Arab Emirates</small></p>
									<p><small>Monday, 26th November, 2015 - 18;45;15</small></p>
								</div>
								<div class="sectionslide">
									<p><a href="property-detail.php">1 BR, Giovanni Boutique Suites, SPorts City Studio</a></p>
									<p><small>SPorts CIty, Dubai, United Arab Emirates</small></p>
									<p><small>Monday, 26th November, 2015 - 18;45;15</small></p>
								</div>
								<div class="sectionslide">
									<p><a href="property-detail.php">1 BR, Giovanni Boutique Suites, SPorts City Studio</a></p>
									<p><small>SPorts CIty, Dubai, United Arab Emirates</small></p>
									<p><small>Monday, 26th November, 2015 - 18;45;15</small></p>
								</div>
								<div class="sectionslide">
									<p><a href="property-detail.php">1 BR, Giovanni Boutique Suites, SPorts City Studio</a></p>
									<p><small>SPorts CIty, Dubai, United Arab Emirates</small></p>
									<p><small>Monday, 26th November, 2015 - 18;45;15</small></p>
								</div>
							</li>
						</ul>
				</li>
				
				
			</ul>
			<script>
		$(document).scroll(function() {
			if($(this).scrollTop() > 320){
				 $("#fixedscroll").addClass("bottomfixed");
			}
			else{
				$("#fixedscroll").removeClass("bottomfixed");
			}
			
		});
		
		
		
		
		
		</script>
			<script>
			$(document).ready(function()
				{	
					$(document).on('submit', '#reg-form', function()
					{
						var data = $(this).serialize();
						
						
						$.ajax({
						
						type : 'POST',
						url  : 'mortgage_filter.php',
						beforeSend: function(){
							$(".se-pre-con").fadeIn("slow");
					    },
						data : data,
						success :  function(data)
								   {						
										
									$(".result").fadeIn(1000).show(function()
									{
										$(".result").html(data);
										
									});
										$(".se-pre-con").fadeOut("slow");
										
								   }
						});
						
						return false;
					});
					
					
				});
				
				
			</script>
			
			@include('layouts.sidebar_mortgage')

			<!-- END FEATURE ITEM-->
			
						<script>
						$(document).ready(function(){
							$("#form_reset").click(function(){
								$('#reg-form').trigger("reset");
								
								$("#form_reset").removeClass("btnactive");
							});
							
							
							
							$("#veiwmoredata").click(function(){
								$(".readmoreclass").fadeIn()
							});
							
							
							$("#veiwmoredata").click(function(){
								
								
								var myMarginTop = $("#footerhide").css("marginTop");
								if(myMarginTop == '-62px'){
									$('#footerhide').animate({marginTop:0},300).attr('class', 'footerhide1');
									$('#rotatearrow').attr("src", '{{URL::asset('public/images/hide-button.jpg')}}');
								}
								else{
									$('#footerhide').animate({marginTop:-62},300).attr('class', 'footerhide1');
									$('#rotatearrow').attr("src", '{{URL::asset('public/images/readmorebtn.png')}}');
								}
							});
							
	
							
							$('.closelist').on("click", function () {
								$(this).parents('li').fadeOut('slow', function(){
								  $(this).remove();

								  // activate reset button
								  $("#form_reset").addClass("btnactive");
								  
								});
							
								 
							});
							
							
						});
						
					
						
						</script>
			
			<div class="span10 listsliderdv" id="mortgage_main">
				
				<div id="div1" class="result">
				<ul id="content-slider" class="content-slider mortgage">

				<!-- loop your record here -->
				@if (count($mortgageList) > 0)
					@foreach ($mortgageList as $listing)
					<li>
						
						<div class="sliderdv" id="lst_item">
							<div class="slidertopdv">
								<span class="leftcontent">
									<input type="checkbox" value="{{ $listing->id }}" name="morchk" id="selectbox11" class="checkboxslid"><label for="selectbox11">Select</label> 
								</span>
								<span class="rightcontent">
									<a  class="closelist"><img src="{{URL::asset('public/images/icon-cross.png')}}"></a>
								</span>
								<div class="clear"></div>
							</div>
							
							<div class="maptopdv" id="mapdv1">
								<!-- <iframe src="listing_map.php" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe> -->
							</div>
							<div class="sliderimg">
								<img src="{{URL::asset('public/images/bank1.png')}}">
							</div>
							
						</div>
						
						<div class="sliderdetails ">
							<ul>
								<li>{{ $listing->bank_name }}</li>
								<li>AED {{ $listing->min_salary }}</li>
								<li>{{ $listing->down_payment }}%</li>
								<li>AED {{ $listing->monthly_payment }}</li>
								<li>{{ $listing->rate_percentage }}%</li>
								<li class="applybutton"><button onclick="showpopup()" class="btngist btnapply" type="button">Apply</button></li>
							</ul>
							
						</div>
						
						
					</li>
					@endforeach
				@endif
					
				</ul>
				</div>
				
				
				<div class="clear"></div>
			</div>
			<div class="clear10"></div>
			<div class="clear"></div>
				
				
				
		
		<!-- FEATURE ITEM-->
		
		<!-- FEATURE ITEM-->
		</div>

<!-- add your js files here -->
 <script src="{{URL::asset('public/js_module/mortgage.js')}}"></script> 
@endsection