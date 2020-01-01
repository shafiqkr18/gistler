@if (count($agentsList) > 0)
 <?php $counter = 0; ?>
			@foreach ($agentsList as $listing)

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
					<span class="packageoffer">
						<img src="{{URL::asset('public/images/package-gold.png')}}">
					</span>
					<div class="profileimg topmargin">
						<a href="{{ url('/agents/profile/'. $listing->id ) }}"><img src="{{URL::asset('public/images/user-profile.png')}}"></a>
					</div>
					<div class="profiletitle">
						<a href="agent_detail.php"><h2>{{ $listing->first_name }}</h2></a>
						<h3>{{ $listing->job_title }}</h3>
					</div>
					<div class="grayline"></div>
					<input id="input-21e" value="4.5" type="number" readonly class="rating" min=0 max=5 step=0.5 data-size="xs" >
					<div class="profileprop">
						<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-green.png')}}" height="20"><span><p>Recently Sold</p></span></i>26 </span>
						<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-blue.png')}}" height="20"><span><p>Recently Sold</p></span></i>17 </span>
						<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-red.png')}}" height="20" ><span><p>Recently Sold</p></span></i>05 </span>
						<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-orange.png')}}" height="20"><span><p>Recently Sold</p></span></i>08 </span>
					</div>
					<div class="clear10"></div>
					<center><img src="{{URL::asset('public/images/icon1.png')}}"> &nbsp; <img src="{{URL::asset('public/images/icon2.png')}}"> &nbsp; <img src="{{URL::asset('public/images/icon3.png')}}"></center>
					<div class="estatebtn">
						<a href="mailto:{{ $listing->email }}">SEND EMAIL</a>
						<a href="javascript:;" class="show-number" id="{{ $listing->id }}">SHOW PHONE NUMBER</a>
						<span id="span{{ $listing->id }}" style="display:none;">{{ $listing->mobile_no_new_ccode }} {{ $listing->mobile_no_new }}</span>
						<a href="javascript:;" class="showlist">AREA SPECIALITY
							<ul>
								<li>1 - JBR <span class="right"><img src="{{URL::asset('public/images/icon-green.png')}}">26 <img src="{{URL::asset('public/images/icon-blue.png')}}">17</span></li>
								<li>2 - Dubai Marina <span class="right"><img src="{{URL::asset('public/images/icon-green.png')}}">26 <img src="{{URL::asset('public/images/icon-blue.png')}}">17</span></li>
								<li>3 - JLT <span class="right"><img src="{{URL::asset('public/images/icon-green.png')}}">26 <img src="{{URL::asset('public/images/icon-blue.png')}}">17</span></li>
							</ul>
						</a>
					</div>
					<div class="clear10"></div>
					
					<div class="profilefooter">
						<div class="experience">
							EXPERIENCE: <span>{{ $listing->experience }}</span>
						</div>
						<div class="brnnumber">
							BRN# {{ $listing->rera }}
						</div>
						<div class="clear"></div>
					</div>
				</div>

</div>
@endforeach
@endif