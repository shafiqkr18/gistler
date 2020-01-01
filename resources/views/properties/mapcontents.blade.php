	
<script type="text/javascript">
 function initialize() {
	console.log('initialize called');
    var loc, map, marker, infobox;
    
    loc = new google.maps.LatLng(25.09523762552123, 55.16304016113281);
    
    map = new google.maps.Map(document.getElementById("map2"), {
         zoom: 12,
         center: loc,
         mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    
	
	
	var image1 = "{{URL::asset('public/images/icon-blue.png')}}";
	var image2 = "{{URL::asset('public/images/icon-blue.png')}}";
	var image3 = "{{URL::asset('public/images/icon-blue.png')}}";
	var image4 ="{{URL::asset('public/images/icon-blue.png')}}";
	var image5 = "{{URL::asset('public/images/icon-blue.png')}}";
	
	
	@foreach($propertiesMap as $listing)
	    		
				marker{{ $listing->id }} = new google.maps.Marker({
		       // position: {lat: {{$listing->lon}}, lng: {{$listing->lat}}},
		        position: {lat: 25.09523762552123, lng: 55.16304016113281},
				map: map,
		        visible: true,
				icon: image1
		        });
				    

				infobox{{ $listing->id }} = new InfoBox({
		         content: document.getElementById("infobox"+ {{ $listing->id }}),
		         disableAutoPan: false,
		         maxWidth: 150,
		         pixelOffset: new google.maps.Size(-140, 0),
		         zIndex: null,
		         boxStyle: {
		            background: "url('http://google-maps-utility-library-v3.googlecode.com/svn/trunk/infobox/examples/tipbox.gif') no-repeat",
		            opacity: 0.75,
		            width: "280px"
		        },
		        closeBoxMargin: "12px 4px 2px 2px",
		        closeBoxURL: "http://www.google.com/intl/en_us/mapfiles/close.gif",
		        infoBoxClearance: new google.maps.Size(1, 1)
		    });

			google.maps.event.addListener(marker{{ $listing->id }}, 'click', function() {
		        infobox{{ $listing->id }}.open(map, this);
		        //map.panTo(loc);
		    });	

    @endforeach
	

    
    
    
	
	
	
	
	
		google.maps.event.addListenerOnce(map, 'idle', function() {
		   google.maps.event.trigger(map, 'resize');
		});
	
}

</script>
	
	
  
	
    
				
						<script>
						$(document).ready(function(){
							
							initialize();
							$("#form_reset").click(function(){
								$('#reg-form').trigger("reset");
								myFunction();
								$("#form_reset").removeClass("btnactive");
							});
							
							
							
							$("#veiwmoredata").click(function(){
								$(".readmoreclass").fadeIn()
							});
							
							
							$("#veiwmoredata").click(function(){
								
								
								var myMarginTop = $("#footerhide").css("marginTop");
								if(myMarginTop == '-95px'){
									$('#footerhide').animate({marginTop:0},300).attr('class', 'footerhide1');
									$('#rotatearrow').attr("src", 'images/hide-button.jpg');
								}
								else{
									$('#footerhide').animate({marginTop:-95},300).attr('class', 'footerhide1');
									$('#rotatearrow').attr("src", 'images/readmorebtn.png');
								}
							});
							
							$('.closelist').on("click", function () {
								$(this).parents('li').fadeOut('slow', function(){
								  $(this).remove();
								  // alert( $('.background-blackout').length );
								  //console.log( $('.background-blackout').length );
								});
								
								$('#content-slider').css({
									'width' : $('#content-slider').width()  - 210
								});
								 
							});
							
						});
						</script>


				
			
				<div id="map2" width="100%"  style="width:100% !important; height: 100%;"></div>

 



<div class="infobox-wrapper">

				@foreach($propertiesMap as $listing)			

			<div id="infobox{{ $listing->id }}" class="infobox_inner">
					<div class="sliderdv">
							<div class="slidertopdv">
								<span class="leftcontent">
									<input type="checkbox" name="test" id="selectbox11" checked class="checkboxslid"><label for="selectbox11">Select</label> 
								</span>
								<span class="rightcontent">
									<a href="agency_detail.php" target="_parent">Details</a> &nbsp; &nbsp; 
								</span>
								<div class="clear"></div>
							</div>
							<div class="sliderbottomdv">
								
								<div class="divwidth45 propdetail">
									<h5>AED 249,900</h5>
									<p>
										Dubai Marina<br/>
										Bay Central
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
								<ul id="map-image-gallery{{ $listing->id }}" class="gallery list-unstyled cS-hidden">
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
									
								</ul>
							</div>
							
						</div>
			</div>
			 @endforeach
			
</div>

<script>
    	 $(document).ready(function() {
			setTimeout(
			  function() 
			  {
			  			$("#content-slider").lightSlider({
			                loop:false,
			                keyPress:true
			            });

					  	@foreach($propertiesMap as $listing)
					            $('#map-image-gallery{{ $listing->id }}').lightSlider({
					                gallery:true,
					                item:1,
					                thumbItem:9,
					                slideMargin: 0,
					                speed:500,
					                loop:true,
					                onSliderLoad: function() {
					                    $('#map-image-gallery{{ $listing->id }}').removeClass('cS-hidden');
					                }  
					            });
						@endforeach	
					
					}, 2000);
		});
    </script>


		
		
