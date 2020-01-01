<ul style="margin:0px;">
				
			  @if (count($propertiesList) > 0)
				@foreach ($propertiesList as $listing)
				
				
				<li>
				<div class="sliderdv bgshade">
					<div class="slidertopdv">
						<span class="leftcontent">
							<input type="checkbox" name="test" value="{{ $listing->id }}" id="selectbox13" class="checkboxslid"><label for="selectbox13">Select</label> &nbsp; <a class="togglebutton" href="#" onclick="showpopup();" id="togglemap3"><img src="{{URL::asset('public/images/icon-map.png')}}"> Map</a>
						</span>
						<span class="rightcontent">
							<a href="property-detail.php">Details</a> &nbsp; &nbsp; <a href="#" class="closelist"><img src="{{URL::asset('public/images/icon-cross.png')}}"></a>
						</span>
						<div class="clear"></div>
					</div>
					<div class="sliderbottomdv">
						
						<div class="divwidth45 propdetail">
							<h5>AED {{ number_format($listing->price,2) }}</h5>
							<p>
								Dubai Marina<br/>
								Bay Central 3
							</p>
							
						</div>
						
						<div class="divwidth18 propdetail2">
							<p class="txtcenter">
								3<br/><br/>
								
								<img src="{{URL::asset('public/images/icon-bed.png')}}">
								
							</p>
						</div>
						
						<div class="divwidth18 propdetail2">
							<p class="txtcenter">
								2.5<br/><br/>
								
								<img src="{{URL::asset('public/images/icon-bathroom.png')}}">
								
							</p>
						</div>
						
						<div class="divwidth22 propdetail2">
							<p class="txtcenter">
								2,200<br/><br/>
								
								sq ft
								
							</p>
						</div>
						
						<div class="clear"></div>
					</div>
					
					<div class="sliderimg">
						<ul id="image-gallery{{ $listing->id }}" class="gallery list-unstyled cS-hidden">
						 @if ( $listing->images->count() )
						    @foreach ($listing->images as $imageslist)
						   
						     <li data-thumb="http://localhost/gistlercrm/uploads/listings/{{ $listing->client_id."/watermark/".md5($listing->rand_key)."/".$imageslist->thumb}}"> 
							  <img src="http://localhost/gistlercrm/uploads/listings/{{ $listing->client_id."/".md5($listing->rand_key)."/watermark/".$imageslist->thumb}}" />
							 </li>
						   @endforeach
						 @else
						 <li data-thumb="{{URL::asset('public/images/sliderimg1.png')}}"> 
							  <img src="{{URL::asset('public/images/sliderimg1.png')}}" />
							 </li>
							 	 <li data-thumb="{{URL::asset('public/images/sliderimg1.png')}}"> 
							  <img src="{{URL::asset('public/images/sliderimg1.png')}}" />
							 </li>
							 	 <li data-thumb="{{URL::asset('public/images/sliderimg1.png')}}"> 
							  <img src="{{URL::asset('public/images/sliderimg1.png')}}" />
							 </li>
							 	 <li data-thumb="{{URL::asset('public/images/sliderimg1.png')}}"> 
							  <img src="{{URL::asset('public/images/sliderimg1.png')}}" />
							 </li>
							 	 <li data-thumb="{{URL::asset('public/images/sliderimg1.png')}}"> 
							  <img src="{{URL::asset('public/images/sliderimg1.png')}}" />
							 </li>
						@endif	
							
						</ul>
					</div>
					
				</div>
				
				</li>
				
				
			@endforeach
			@endif
				
			</ul>
				<div class="cleardv"></div>
				<script>
    	 $(document).ready(function() {
			setTimeout(
			  function() 
			  {
			  			$("#content-slider").lightSlider({
			                loop:false,
			                keyPress:true
			            });

					  	@foreach($propertiesList as $listing)
					            $('#image-gallery{{ $listing->id }}').lightSlider({
					                gallery:true,
					                item:1,
					                thumbItem:9,
					                slideMargin: 0,
					                speed:500,
					                loop:true,
					                onSliderLoad: function() {
					                    $('#image-gallery{{ $listing->id }}').removeClass('cS-hidden');
					                }  
					            });
							@endforeach	
					
					}, 2000);
		});
    </script>