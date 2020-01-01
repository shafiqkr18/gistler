
@if (count($servicesList) > 0)
 <?php $counter = 0; ?>
			@foreach ($servicesList as $listing)

			@if ($counter++ % 3 == 0) 
			   <div class="clear"></div>
			@endif
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
<div class="span3 rightsidebar agencydvs">

				<div class="profiledv">
					<div class="clear10"></div>
					<div class="profileimg">
						<a href="{{ url('/homeservices/profile/'. $listing->id ) }}"><img src="{{URL::asset('public/images/services.png')}}"></a>
					</div>
					<div class="profiletitle">
						<a href="{{ url('/homeservices/profile/'. $listing->id) }}"><h2>{{ $listing->company_name }}</h2></a>
						<h3>Community: Dubai, Downtown Burj Dubai</h3>
					</div>
					
					<div class="profileprop nopadtop">
						<input id="input-21e" value="4.5" readonly type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
					</div>
					<div class="clear"></div>
					
					<div class="estatebtn">
						<a href="mailto:{{ $listing->company_email }}">SEND EMAIL</a>
						<a href="javascript:;" class="show-number" id="{{ $listing->id }}">SHOW PHONE NUMBER</a>
						<span id="span{{ $listing->id }}" style="display:none;">{{ $listing->company_phone }}</span>
						<a href="javascript:;" class="show-fax" id="{{ $listing->id }}">SHOW FAX NUMBER</a>
						<span id="span_fax{{ $listing->id }}" style="display:none;">{{ $listing->company_fax }}</span>
						<a href="{{ $listing->company_website }}" target="_blank">GO TO THE WEBSITE</a>
						
					</div>
					<div class="estatenum">
						<span class="leftnum">LICENSE# {{ $listing->company_license }}</span>
						
					</div>
					<div class="clear"></div>
					
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