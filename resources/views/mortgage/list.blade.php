	<link rel="stylesheet"  href="{{URL::asset('public/src/css/lightslider.css')}}"/>
	<script src="{{URL::asset('public/src/js/lightslider.js')}}"></script> 
    <script>
    	 $(document).ready(function() {
			$("#content-slider").lightSlider({
                loop:false,
                keyPress:true
            });
            $('#image-gallery').lightSlider({
                gallery:true,
                item:1,
                thumbItem:9,
                slideMargin: 0,
                speed:500,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery').removeClass('cS-hidden');
                }  
            });
			
		});
    </script>
	<ul id="content-slider" class="content-slider mortgage">



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
					<div class="cleardv"></div>