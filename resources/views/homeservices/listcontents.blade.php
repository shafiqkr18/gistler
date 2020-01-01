 
 <ul style="margin:0px;">

 		@if (count($servicesList) > 0)
			@foreach ($servicesList as $listing)
				<li>
				<div class="sliderdv bgshade3">
					<div class="slidertopdv_transparent">
						<span class="leftcontent">
							<input type="checkbox" name="chkhs" id="selectbox11" value="{{ $listing->id }}" class="checkboxslid"><label for="selectbox11">&nbsp;</label>
						</span>
						<span class="rightcontent">
							<a href="#" onclick="getslideid(1);" class="closelist"><img src="{{URL::asset('public/images/cross-white.png')}}"></a>
						</span>
						<div class="clear"></div>
					</div>
					<div class="proerptysmall2">
						<div class="propertysmleft">
							<a href="agency_detail.php"><img src="{{URL::asset('public/images/com-logo.png')}}"></a>
						</div>
						<div class="propertysmright2">
							<h5><a href="agency_detail.php">{{ $listing->company_name }}</a></h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipicising elit.</p>
							
							
						</div>
						<div class="clear"></div>
					</div>
					
					
					
				</div>
				</li>
			  
				@endforeach
				@endif


			</ul>