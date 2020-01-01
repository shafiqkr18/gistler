<script type="text/javascript">
	$(document).ready(function () {
	$('.show-number').on('click', function(e) {
	 e.preventDefault();
	 var id = $(this).attr("id");
	  $(this).text($("#span"+id).text());
     
     });

	$('.show-fax').on('click', function(e) {
	 e.preventDefault();
	 var id = $(this).attr("id");
	  $(this).text($("#span_fax"+id).text());
     
     });
});

</script>
@if (count($agenciesList) > 0)
 <?php $counter = 0; ?>
			@foreach ($agenciesList as $listing)

			@if ($counter++ % 3 == 0) 
			   <div class="clear"></div>
			@endif

<div class="span3 rightsidebar agencydvs">
				<div class="profiledv">
					
					
					<div class="hexagon" onclick="window.location.href='{{ url('/agencies/profile/'. $listing->id ) }}'">
						<p>View<br/>Company Profile</p>
						<img src="{{URL::asset('public/images/com-logo.png')}}">
					</div>
					<div class="profiletitle">
						<h2>{{ $listing->name }}</h2>
						<h3>{{ $listing->address }}</h3>
					</div>
					
					<div class="profileprop">
						<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-green.png')}}" height="20" onclick="changpointers(1);"><span><p>Recently Sold</p></span></i>26 </span>
						<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-blue.png')}}" height="20" onclick="changpointers(2);"><span><p>Recently Sold</p></span></i>17 </span>
						<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-red.png')}}" height="20" onclick="changpointers(3);"><span><p>Recently Sold</p></span></i>05 </span>
						<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-orange.png')}}" height="20" onclick="changpointers(4);"><span><p>Recently Sold</p></span></i>08 </span>
					</div>

					<div class="estatebtn">
						<a href="mailto:{{ $listing->email }}">SEND EMAIL</a>
						<a href="javascript:;" class="show-number" id="{{ $listing->id }}">SHOW PHONE NUMBER</a>
						<span id="span{{ $listing->id }}" style="display:none;">{{ $listing->phone_no }}</span>
						<a href="{{ $listing->web }}" target="_blank">GO TO THE WEBSITE</a>
						<a href="agency_map.php">VIEW ALL PROPERTIES</a>
					</div>
					<div class="estatenum">
						<span class="leftnum">ORN# 20202020</span>
						
					</div>
					<div class="profilefooter">
						<a href="http://twitter.com/minimalmonkey" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a>
						<a href="http://facebook.com" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a>
						<a href="http://plus.google.com" class="icon-button google-plus"><i class="icon-google-plus"></i><span></span></a>
						<a href="http://linkedin.com" class="icon-button linkedin"><i class="icon-linkedin"></i><span></span></a>
					</div>
				</div>
				
			</div>
@endforeach
@endif			