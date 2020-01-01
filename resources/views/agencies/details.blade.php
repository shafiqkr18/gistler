@extends('layouts.agents_details')

@section('content')
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
<div class="row-fluid" >
				<div class="span9">
					<div class="clear10"></div>
					<div class="row">
						<div class="agencydv">
							<div class="span4 leftimgdv">
								<img src="{{URL::asset('public/images/agency.png')}}">
								<h4>WENDY HELMS</h4>
								<h5>CEO</h5>
							</div>
							<div class="span8 rightcotent">
								<h2>{{ $hsList->name }}</h2>
								
								<p class="more">{{ $hsList->description }}
								</p>
								<br/><div class="clear10"></div>
								<div class="agencyprofile">
									<span><a href="agents_map.php"><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-green.png')}}" height="20"><span><p>Recently Sold</p></span></i></a>26 </span>
									<span><a href="agents_map.php"><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-blue.png')}}" height="20"><span><p>Recently Sold</p></span></i></a>17 </span>
									<span><a href="agents_map.php"><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-red.png')}}" height="20" ><span><p>Recently Sold</p></span></i></a>05 </span>
									<span><a href="agents_map.php"><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-orange.png')}}" height="20"><span><p>Recently Sold</p></span></i></a>08 </span> &nbsp; 
									<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-group.png')}}"><span><p>Group</p></span></i> 08 </span>
									
									<a href="javascript:;" onclick="document.getElementById('readmorebtn').click();">Read More</a> <a href="agencies.php">View All Our Properties</a>
								</div>
								<div class="clear10"></div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="clear10"></div>

					<!-- agents list here -->
					@if (count($agentsList) > 0)
					 <?php $counter = 0; ?>
						@foreach ($agentsList as $listing)

						@if ($counter++ % 3 == 0) 
						   @if ($counter > 0) 
					           </div>
					       @endif

					       <div class="row" >
						@endif
					
						<div class="span4 rightsidebar agencydvs">
							<div class="profiledv">
								<span class="packageoffer">
									<img src="{{URL::asset('public/images/package-gold.png')}}">
								</span>
								<div class="profileimg topmargin">
									<a href="#"><img src="{{URL::asset('public/images/user-profile.png')}}"></a>
								</div>
								<div class="profiletitle">
									<a href="#"><h2>YELENA MIRKINA</h2></a>
									<h3>Senior Property Consultant</h3>
								</div>
								<input id="input-21e" value="4.5" readonly type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
								<div class="profileprop">
									<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-green.png')}}" height="20"><span><p>Recently Sold</p></span></i>26 </span>
									<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-blue.png')}}" height="20"><span><p>Recently Sold</p></span></i>17 </span>
									<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-red.png')}}" height="20" ><span><p>Recently Sold</p></span></i>05 </span>
									<span><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-orange.png')}}" height="20"><span><p>Recently Sold</p></span></i>08 </span>
								</div>
								<div class="clear10"></div>
								<center><img src="{{URL::asset('public/images/icon1.png')}}"> &nbsp; <img src="{{URL::asset('public/images/icon2.png')}}"> &nbsp; <img src="{{URL::asset('public/images/icon3.png')}}"></center>
								<div class="estatebtn">
									<a href="mailto:test@gmail.com">SEND EMAIL</a>
									<a href="javascript:;" class="show-number">SHOW PHONE NUMBER</a>
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
										EXPERIENCE: <span>15</span>
									</div>
									<div class="brnnumber">
										BRN# 12345
									</div>
									<div class="clear"></div>
								</div>
							</div>
							
						</div>
						@endforeach
						 @if ($counter > 0) 
					           </div>
					       @endif
					@endif	
					<!-- agents list ends here -->

					
					
				</div>
				<div class="span3 rightsidebar">
					<div class="span12 rightsidebar agencydvs agencydetail">
						<div class="profiledv">
							
							
							<div class="hexagon" onclick="window.location.href='#'">
								<p>GO TO <br/>THE WEBSITE</p>
								<img src="{{URL::asset('public/images/com-logo.png')}}">
							</div>
							<div class="profiletitle">
								<div class="clear10"></div>
								<h2>{{ $hsList->name }}</h2>
								<div class="clear10"></div>
							</div>
							
							

							<div class="estatebtn">
								<a href="mailto:{{ $hsList->email }}">SEND EMAIL</a>
								<a href="javascript:;" class="show-number" id="{{ $hsList->id }}">SHOW PHONE NUMBER</a>
								<span id="span{{ $hsList->id }}" style="display:none;">{{ $hsList->phone_no }}</span>
						
								<a href="javascript:;" class="show-fax">SHOW FAX NUMBER</a>
								<a href="{{ $hsList->web }}" target="_blank">GO TO THE WEBSITE</a>
							</div>
							<div class="estatenum">
								<span class="leftnum">ORN# 20202020</span>
								<div class="clear"></div>
							</div>
							<div class="profilefooter">
								<a href="http://twitter.com/minimalmonkey" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a>
								<a href="http://facebook.com" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a>
								<a href="http://plus.google.com" class="icon-button google-plus"><i class="icon-google-plus"></i><span></span></a>
								<a href="http://linkedin.com" class="icon-button linkedin"><i class="icon-linkedin"></i><span></span></a>
							</div>
						</div>
						
					</div>
				</div>
			</div>

				<!-- add your js files here -->
			<script src="{{URL::asset('public/js_module/common.js')}}"></script> 
 			<script src="{{URL::asset('public/js_module/agencies.js')}}"></script> 
@endsection