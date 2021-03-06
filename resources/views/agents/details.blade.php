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
				<div class="span9 setwidth">
					<div class="clear10"></div>
					<div class="row">
						<div class="agencydv">
							<div class="span4 leftimgdv">
								<img src="{{URL::asset('public/images/agency.png')}}">
								<h4>{{ $hsList->first_name }} {{ $hsList->last_name }}</h4>
								<h5>{{ $hsList->job_title }}</h5>
							</div>
							<div class="span8 rightcotent">
								<h2>Real Estate Company Name</h2>
								
								<p class="more">Lorem ipsum dolor sit amet, eos cu vide veniam, ut pro ferri essent insolens. Mea te corrumpit referrentur, ut pro erant iisque, sint iudicabit repudiandae ea vim. Ne est fabulas scaevola dissentiunt, nihil ornatus ea vel. 
								 instructior disputationi, an usu soluta tractatos splendide, sea liber referrentur efficiantur at. Libris facilisis appellantur vel ut, mundi inermis deleniti sea no. Vix menandri indoctum praesent ut, vim ei viris accusata. 
								
								<br/><br/>
								Eam no bonorum instructior disputationi, an usu soluta tractatos splendide, sea liber referrentur efficiantur at. Libris facilisis appellantur vel ut, mundi inermis deleniti sea no. Vix menandri indoctum praesent ut, vim ei viris accusata.
								</p>
								<p><a href="#">SPECIALITIES</a> &nbsp; - &nbsp; Lorem ipsum dolor sit amet, eos cu vide veniam, ut pro ferri.</p>
								
								<br/><div class="clear10"></div>
								<div class="agencyprofile">
									<span><a href="agents_map.php"><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-green.png')}}" height="20"><span><p>Recently Sold</p></span></i></a>26 </span>
									<span><a href="agents_map.php"><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-blue.png')}}" height="20"><span><p>Recently Sold</p></span></i></a>17 </span>
									<span><a href="agents_map.php"><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-red.png')}}" height="20" ><span><p>Recently Sold</p></span></i></a>05 </span>
									<span><a href="agents_map.php"><i class="tooltips-top"><img src="{{URL::asset('public/images/icon-orange.png')}}" height="20"><span><p>Recently Sold</p></span></i></a>08 </span> &nbsp; 
									
									&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
									<a href="javascript:;" onclick="document.getElementById('readmorebtn').click();">Read More</a> <a href="#">View All Our Properties</a>
								</div>
								<div class="clear10"></div>
							</div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="clear10"></div>
					<div class="propertyfeature" >
						<h3>Areas Specialities</h3>
						<ul class="specialities">
							<li>- Jumeirah Beach Residence (100)</li>
							<li>- Dubai Marina (100)</li>
							<li>- Jumeirah Lake Towers (100)</li>
						</ul>
					</div>
					
					<div class="propertyfeature reviewsdv">
						<button class="ratingbtn" onclick="showpopup()">Rate Agent</button>
						<h3>Ratings & Reviews</h3>
					</div>
					
					<div class="propertyfeature">
						<div class="ratingdvs">
							<input id="input-21e" value="4.5" type="number" readonly class="rating" min=0 max=5 step=0.5 data-size="xs" ><h3>   Will Recommend</h3> 
							
							
							<span class="hovermenu flag right"><i class="icons-report tooltips-top"><span><p>Report</p></span></i>
								<ul class="reportproblem agentreport">
									<li>
										<div class="fileattach">
											<h3>Report a problem</h3>
											<h4>What's the issue?</h4>
											<p><input type="radio" name="problem1" id="sec1option1"> <label for="sec1option1">Incorrect information/photos</label></p>
											<p><input type="radio" name="problem1" checked id="sec1option2"> <label for="sec1option2">Home should be for sale/rent</label></p>
											<p><input type="radio" name="problem1" id="sec1option3"> <label for="sec1option3">Fraudulent listing or spam</label></p>
											<div class="clear10"></div>
											<p><big>Gistler Account</big></p>
											<p>In order to report a review, you must have a registered account on Gistler.</p>
											<div class="clear10"></div>
											<p><input type="radio" name="account1" id="sec1option4"> <label for="sec1option4">I need to create a Gistler account.</label></p>
											<p><input type="radio" name="account1" id="sec1option5"> <label for="sec1option5">I already have a Gistler account.</label></p>
											<div class="clear10"></div>
											<p><input type="checkbox" name="certify" id="sec1option6"> <label for="sec1option6">I promise this review is honest and respectful. I understand Gistler's Terms and Conditions</label></p>
											<input type="submit" value="Submit" class="reportbtn">
											<div class="clear10"></div>
											<p>Don't see your issue here? <br/>Visit our Help Center</p>
										</div>
									</li>
								</ul>
							</span>
							
							<div class="clear"></div>
							<p><strong>28-10-2015 / Name</strong></p>
						</div>
						<div class="clear"></div>
						<div class="ratingdvs2">
							<div class="span4">
								<input id="input-21e" value="4.5" type="number" readonly class="rating" min=0 max=5 step=0.5 data-size="xs" ><p> Local Knowledge</p>
								<div class="clear"></div>
								<input id="input-21e" value="4.5" type="number" readonly class="rating" min=0 max=5 step=0.5 data-size="xs" ><p> Process Experties</p>
								<div class="clear"></div>
								<input id="input-21e" value="4.5" type="number" readonly class="rating" min=0 max=5 step=0.5 data-size="xs" ><p> Responsiveness</p>
								<div class="clear"></div>
								<input id="input-21e" value="4.5" type="number" readonly class="rating" min=0 max=5 step=0.5 data-size="xs" ><p> Negotiation Skills</p>
								<div class="clear"></div>
							</div>
							<div class="span8">
								<p>Lorem ipsum dolor sit amet, eos cu vide veniam, ut pro ferri essent insolens. Mea te corrumpit referrentur, ut pro erant iisque, sint iudicabit repudiandae ea vim. Ne est fabulas scaevola dissentiunt, nihil ornatus ea vel. Lorem ipsum dolor sit amet, eos cu vide veniam, ut pro ferri essent insolens. Mea te corrumpit referrentur, ut pro erant iisque, sint iudicabit repudiandae ea vim. Ne est fabulas scaevola dissentiunt, nihil ornatus ea vel.  Ne est fabulas scaevola dissentiunt, nihil ornatus ea vel. </p>
								<div class="clear"></div>
								<div class="agencyprofile">
									<span><img src="{{URL::asset('public/images/icon-heart4.png')}}"> 240</span>
									<span><img src="{{URL::asset('public/images/icon-eye3.png')}}"> 300</span>
								</div>
							</div>
						</div>
						
					</div>
					
					<div class="clear"></div>
					
					<div class="propertyfeature">
						<div class="ratingdvs">
							<input id="input-21e" value="4.5" type="number" readonly class="rating" min=0 max=5 step=0.5 data-size="xs" ><h3>   Will Recommend</h3> 
							
							<span class="hovermenu flag right"><i class="icons-report tooltips-top"><span><p>Report</p></span></i>
								<ul class="reportproblem agentreport">
									<li>
										<div class="fileattach">
											<h3>Report a problem</h3>
											<h4>What's the issue?</h4>
											<p><input type="radio" name="problem1" id="sec2option1"> <label for="sec2option1">Incorrect information/photos</label></p>
											<p><input type="radio" name="problem1" checked id="sec2option2"> <label for="sec2option2">Home should be for sale/rent</label></p>
											<p><input type="radio" name="problem1" id="sec2option3"> <label for="sec2option3">Fraudulent listing or spam</label></p>
											<div class="clear10"></div>
											<p><big>Gistler Account</big></p>
											<p>In order to report a review, you must have a registered account on Gistler.</p>
											<div class="clear10"></div>
											<p><input type="radio" name="account1" id="sec2option4"> <label for="sec2option4">I need to create a Gistler account.</label></p>
											<p><input type="radio" name="account1" id="sec2option5"> <label for="sec2option5">I already have a Gistler account.</label></p>
											<div class="clear10"></div>
											<p><input type="checkbox" name="certify" id="sec2option6"> <label for="sec2option6">I promise this review is honest and respectful. I understand Gistler's Terms and Conditions</label></p>
											<input type="submit" value="Submit" class="reportbtn">
											<div class="clear10"></div>
											<p>Don't see your issue here? <br/>Visit our Help Center</p>
										</div>
									</li>
								</ul>
							</span>
							
							<div class="clear"></div>
							<p><strong>28-10-2015 / Name</strong></p>
						</div>
						<div class="clear"></div>
						<div class="ratingdvs2">
							<div class="span4">
								<input id="input-21e" value="4.5" readonly type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" ><p> Local Knowledge</p>
								<div class="clear"></div>
								<input id="input-21e" value="4.5" readonly type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" ><p> Process Experties</p>
								<div class="clear"></div>
								<input id="input-21e" value="4.5" readonly type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" ><p> Responsiveness</p>
								<div class="clear"></div>
								<input id="input-21e" value="4.5" readonly type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" ><p> Negotiation Skills</p>
								<div class="clear"></div>
							</div>
							<div class="span8">
								<p>Lorem ipsum dolor sit amet, eos cu vide veniam, ut pro ferri essent insolens. Mea te corrumpit referrentur, ut pro erant iisque, sint iudicabit repudiandae ea vim. Ne est fabulas scaevola dissentiunt, nihil ornatus ea vel. Lorem ipsum dolor sit amet, eos cu vide veniam, ut pro ferri essent insolens. Mea te corrumpit referrentur, ut pro erant iisque, sint iudicabit repudiandae ea vim. Ne est fabulas scaevola dissentiunt, nihil ornatus ea vel.  Ne est fabulas scaevola dissentiunt, nihil ornatus ea vel. </p>
								<div class="clear"></div>
								<div class="agencyprofile">
									<span><img src="{{URL::asset('public/images/icon-heart4.png')}}"> 240</span>
									<span><img src="{{URL::asset('public/images/icon-eye3.png')}}"> 300</span>
								</div>
							</div>
						</div>
						
					</div>
					<div class="clear10"></div><div class="clear10"></div>
					
				</div>
				<div class="span3 rightsidebar">
					<div class="span12 rightsidebar agencydvs agencydetail">
						<div class="profiledv">
							
							
							<div class="hexagon" onclick="window.location.href='http://www.google.com/'">
								<p>GO TO<br/>THE WEBSITE</p>
								<img src="{{URL::asset('public/images/com-logo.png')}}">
							</div>
							<div class="profiletitle">
								<div class="clear"></div>
								<h2>Company Name</h2>
								<div class="clear10"></div>
							</div>
							
							

							<div class="estatebtn">
									<a href="mailto:{{ $hsList->company_email }}">SEND EMAIL</a>
						<a href="javascript:;" class="show-number" id="{{ $hsList->id }}">SHOW PHONE NUMBER</a>
						<span id="span{{ $hsList->id }}" style="display:none;">{{ $hsList->mobile_no_new_ccode }} {{ $hsList->mobile_no_new }}</span>
						<a href="javascript:;" class="show-fax" id="{{ $hsList->id }}">SHOW FAX NUMBER</a>
						<span id="span_fax{{ $hsList->id }}" style="display:none;">0420000000</span>
						<a href="" target="_blank">GO TO THE WEBSITE</a>
							</div>
							<div class="estatenum">
								<span class="leftnum">BRN# 12345</span>
								<span class="rightnum">ORN# 12345</span>
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
 			<script src="{{URL::asset('public/js_module/agents.js')}}"></script> 
@endsection