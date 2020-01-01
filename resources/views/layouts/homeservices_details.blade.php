<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Gistler</title>

<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="{{URL::asset('public/assets/css/bootstrap.css')}}" rel="stylesheet">
<link href="{{URL::asset('public/assets/css/bootstrap-responsive.css')}}" rel="stylesheet">
<link href="{{URL::asset('public/assets/css/pricing.css')}}" rel="stylesheet">
<!-- !important THIS STYLE CSS ON BOTTOM OF STYLEs LIST-->
<link href="{{URL::asset('public/assets/css/style.css')}}" rel="stylesheet">
<!-- !important THIS STYLE CSS ON BOTTOM OF STYLEs LIST-->
<link href="{{URL::asset('public/assets/css/font-awesome.min.css')}}" rel="stylesheet"> 
<link href="{{URL::asset('public/assets/css/prettyPhoto.css')}}" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="{{URL::asset('public/css/jquery.mCustomScrollbar.css')}}">
<link href="{{URL::asset('public/assets/js/google-code-prettify/prettify.css')}}" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css'>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="{{URL::asset('public/assets/ico/favicon.ico')}}">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
 
	<link rel="stylesheet"  href="{{URL::asset('public/css/bootstrap.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{URL::asset('public/css/star-rating2.css')}}" media="all" rel="stylesheet" type="text/css"/>
   
    <script src="{{URL::asset('public/js/star-rating.js')}}" type="text/javascript"></script>

   <script src="{{URL::asset('public/assets/js/jquery.js')}}" type="text/javascript"></script>
<script>
var screenname = 'homeservice_details';
var main_path = '{{ url('/') }}';
$.noConflict();
</script>
	
<script src="{{URL::asset('public/assets/js/jquery.prettyPhoto.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.localscroll-1.2.7-min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.scrollTo-1.4.2-min.js')}}"></script>


<script src="{{URL::asset('public/assets/js/custom.js')}}" type="text/javascript"></script>
</head>
<body data-spy="scroll" data-target=".scroller-spy" data-twttr-rendered="true">
<div id="light" class="white_content mortpopup" style="display:none;"> 
	<a href = "javascript:void(0)" onclick="hidepopup();">X</a>
	
	<form method="post" action="">
	<div class="ratingpophead">
		<h4>WRITE A REVIEW</h4>
		<h5>How likely are you to recommend John Smith</h5>
		<input id="input-21e" value="4.5" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
	</div>
	<div class="clear10"></div>
	<div class="propertyfeature" >
		<div class="ratingdvs2 ratingpop">
								
				<p> Local Knowledge</p> <input id="input-21e" value="4.5" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
				<div class="clear"></div>
				<p> Process Experties</p> <input id="input-21e" value="4.5" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
				<div class="clear"></div>
				<p> Responsiveness</p><input id="input-21e" value="4.5" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
				<div class="clear"></div>
				<p> Negotiation Skills</p><input id="input-21e" value="4.5" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
				<div class="clear"></div>
		
			
		</div>
	</div>
	
	<div class="clear10"></div>
	<div class="clear10"></div>
	
	<div class="width30">
		<p>Service Provided</p>
		
	</div>
	<div class="width70">
		<select class="popsel2">
			<option>Sort Field</option>
			<option>Type 1</option>
			<option>Type 2</option>
		</select>
	</div>
	<div class="clear10"></div>
	<div class="clear10"></div>
	<div class="width30">
		<p>Description</p>
		
		<p> 
		<input type="checkbox" name="test" id="selectboxpop" class="checkboxslid">
		<label for="selectboxpop">&nbsp; Show this review</label> 
		</p>
	</div>
	<div class="width70">
		<textarea class="poparea" name="message nomargin" placeholder="Type your message"></textarea>
		
	</div>
	<div class="clear10"></div>
	
	<div class="popupbottom">
		<h5>Gistler Account</h5>
		<p><input type="radio" name="test2" value="0" id="selectboxpop4" class="checkboxslid">
			<label for="selectboxpop4">&nbsp; We require accounts to prevent fraud (no private info will be shared).</label></p>
		<p><input type="radio" name="test2" checked value="1" id="selectboxpop3" class="checkboxslid">
			<label for="selectboxpop3">&nbsp; I need to create a Gistler account.</label></p>
		<p>
			<input type="checkbox" name="test" id="selectboxpop2" class="checkboxslid">
			<label for="selectboxpop2">&nbsp; I promise this review is honest and respectful. I understand</label> 
			
		</p>
		<div class="clear"></div>
		<p><a href="#">Gistler's Review Guidelines</a></p>
	</div>
	<input type="submit" name="submitrate" value="Submit" class="btnratingsub">
	</form>
	
</div>
<div id="fade" class="black_overlay" onclick="hidepopup()" style="display:none;"></div>


<!--START MAIN-WRAPPER--> 
<div class="main-wrapper">
<!--START MAIN-WRAPPER--> 

<!-- TOP SECTION-->
<section class="section-2 mainnav" id="header-section">

 <!-- ################-->
 <!-- START TOP MENU -->
 <!-- ################-->
<!--header3 here-->
<script> $(window).bind("load", function() { $(".se-pre-con2").fadeOut("slow"); }); 

</script>
<div class="se-pre-con2"></div>
<nav class="nav-top headerstyle1">
    <div class="navbar navbar-fixed-top" id="topnavbar"> 
      <!-- navbar-fixed-top -->
      <div class="navbar-inner navbar-scroll" id="navbartop">
       <div class="container"> 
          <div id="main-nav" class="scroller-spy">
		  
		  
			<div class="span3 logo">
				<a href="{{ url('/') }}"><img src="{{URL::asset('public/images/logo-header.png')}}"></a>
			</div>
			
			<div class="span9">
				<div class="span3 header-left">
				    <a class="topalign">&nbsp;</a> <a href="{{ url('/') }}">Home</a> / <a href="#">Page Name</a>
				</div>
				
				<div class="span6 header-right">
					
					<ul id="menu3">
						
						<li><a href="{{ url('/faq') }}" class="questionmark">&nbsp;</a></li>
						<li><a href="#" class="drop">ENGLISH  &nbsp; &nbsp; </a><!-- Begin 4 columns Item -->
						 
							<div class="dropdown_1column"><!-- Begin 4 columns container -->
							 
								<div class="col_1">
									
									<ul>
										<li><a href="#">English</a></li>
										<li><a href="#">Arabic</a></li>
										<li><a href="#">French</a></li>
										<li><a href="#">Chinese</a></li>
									</ul>   
									  
								</div>
						 
							</div><!-- End 4 columns container -->
						 
						</li><!-- End 4 columns Item -->
						
						<li><a href="#" class="drop"><img src="{{URL::asset('public/images/aed.gif') }}" class="map-icon"> AED &nbsp; &nbsp; </a><!-- Begin 4 columns Item -->
						 
							<div class="dropdown_2columns"><!-- Begin 4 columns container -->
							 
								<div class="col_1">
									
									<ul>
										<li><a href="#"><img src="{{URL::asset('public/images/aed.gif') }}" class="map-icon"> AED</a></li>
										<li><a href="#"><img src="{{URL::asset('public/images/gbp.jpg') }}" class="map-icon"> GBP</a></li>
										<li><a href="#"><img src="{{URL::asset('public/images/qatar.png') }}" class="map-icon"> QTR</a></li>
										<li><a href="#"><img src="{{URL::asset('public/images/usd.png') }}" class="map-icon"> USD</a></li>
									</ul>   
									  
								</div>
						 
							</div><!-- End 4 columns container -->
						 
						</li><!-- End 4 columns Item -->
					 
						 <!-- Authentication Links -->
                          @if (Auth::guest())
                          <li class="loginlink">
                <a href="{{ url('/login') }}">SIGN IN </a> / <a href="{{ url('/register') }}">JOIN </a>
                </li>
                @else
                <li><a href="#" class="drop">{{ Auth::user()->name }}</a><!-- Begin 4 columns Item -->
             
              <div class="dropdown_1column"><!-- Begin 4 columns container -->
               
                <div class="col_1">
                  
                  <ul>
                    <li><a href="{{ url('/logout') }}"><i class="fa fa-btn fa-sign-out"></i>Logout</a></li>
                    
                  </ul>   
                    
                </div>
             
              </div><!-- End 4 columns container -->
             
            </li><!-- End 4 columns Item -->
                
              @endif  
						
					 
					</ul>
					
				</div>
				
				<div class="clear"></div>
				
				<div class="navigation" style="display:none;">
					<ul>
						<li class="active"><a href="#">RENTALS</a></li>
						<li><a href="#">SALES</a></li>
						<li><a href="{{ url('/mortgage') }}">MORTGAGES</a></li>
						<li><a href="#">AGENCIES</a></li>
						<li><a href="#">AGENTS</a></li>
						<li><a href="#">ADVICE</a></li>
						<li><a href="#">HOME SERVICES</a></li>
					</ul>
				</div>
				<ul id="menu">
     
					<li><a href="map.php" class="drop">RENTALS</a><!-- Begin 4 columns Item -->
					 
						<div class="dropdown_5columns"><!-- Begin 4 columns container -->
						 
							
							<div class="col_2">
							 
								<h3>Residential Rentals</h3>
								<ul>
									<li><a href="#">All Residentials (6980)</a></li>
									<li><a href="#">Apartments/Flat for Rent (4000)</a></li>
									<li><a href="#">Villa/House for Rent (1375)</a></li>
									<li><a href="#">Townhouse for Rent (100)</a></li>
									<li><a href="#">Duplex for Rent (1300)</a></li>
									<li><a href="#">Penthouse for Rent (205)</a></li>
									<li class="linkgr"><a href="#">Upload Properties</a></li>
									
								</ul>   
								  
							</div>
					 
							<div class="col_2">
							 
								<h3>Residential Rentals</h3>
								<ul>
									<li><a href="#">All Residentials (6980)</a></li>
									<li><a href="#">Apartments/Flat for Rent (4000)</a></li>
									<li><a href="#">Villa/House for Rent (1375)</a></li>
									<li><a href="#">Townhouse for Rent (100)</a></li>
									<li><a href="#">Duplex for Rent (1300)</a></li>
									<li><a href="#">Penthouse for Rent (205)</a></li>
									<li class="linkgr"><a href="#">Upload Properties</a></li>
								</ul>   
								  
							</div>
					 
							<div class="col_2">
							 
								<h3>Residential Rentals</h3>
								<ul>
									<li><a href="#">All Residentials (6980)</a></li>
									<li><a href="#">Apartments/Flat for Rent (4000)</a></li>
									<li><a href="#">Villa/House for Rent (1375)</a></li>
									<li><a href="#">Townhouse for Rent (100)</a></li>
									<li><a href="#">Duplex for Rent (1300)</a></li>
									<li><a href="#">Penthouse for Rent (205)</a></li>
									<li class="linkgr"><a href="#">Upload Properties</a></li>
								</ul>   
								  
							</div>
					 
							
							 
						</div><!-- End 4 columns container -->
					 
					</li><!-- End 4 columns Item -->
				 
					<li><a href="map.php">SALES</a>
						<div class="dropdown_5columns sales"><!-- Begin 4 columns container -->
						 
							
							<div class="col_2">
							 
								<h3>Residential Rentals</h3>
								<ul>
									<li><a href="#">All Residentials (6980)</a></li>
									<li><a href="#">Apartments/Flat for Rent (4000)</a></li>
									<li><a href="#">Villa/House for Rent (1375)</a></li>
									<li><a href="#">Townhouse for Rent (100)</a></li>
									<li><a href="#">Duplex for Rent (1300)</a></li>
									<li><a href="#">Penthouse for Rent (205)</a></li>
									<li class="linkgr"><a href="#">Upload Properties</a></li>
									
								</ul>   
								  
							</div>
					 
							<div class="col_2">
							 
								<h3>Residential Rentals</h3>
								<ul>
									<li><a href="#">All Residentials (6980)</a></li>
									<li><a href="#">Apartments/Flat for Rent (4000)</a></li>
									<li><a href="#">Villa/House for Rent (1375)</a></li>
									<li><a href="#">Townhouse for Rent (100)</a></li>
									<li><a href="#">Duplex for Rent (1300)</a></li>
									<li><a href="#">Penthouse for Rent (205)</a></li>
									<li class="linkgr"><a href="#">Upload Properties</a></li>
								</ul>   
								  
							</div>
					 
							<div class="col_2">
							 
								<h3>Residential Rentals</h3>
								<ul>
									<li><a href="#">All Residentials (6980)</a></li>
									<li><a href="#">Apartments/Flat for Rent (4000)</a></li>
									<li><a href="#">Villa/House for Rent (1375)</a></li>
									<li><a href="#">Townhouse for Rent (100)</a></li>
									<li><a href="#">Duplex for Rent (1300)</a></li>
									<li><a href="#">Penthouse for Rent (205)</a></li>
									<li class="linkgr"><a href="#">Upload Properties</a></li>
								</ul>   
								  
							</div>
					 
							
							 
						</div>
					</li>
					<li><a href="mortgage.php">MORTGAGES</a></li>
					<li><a href="agencies_map.php">AGENCIES</a></li>
					<li><a href="agents_map.php">AGENTS</a></li>
					<li><a href="advice.php">ADVICE</a>
						<div class="dropdown_5columns advices"><!-- Begin 4 columns container -->
						 
							<div class="col_2">
								<ul>
									<li><a href="advice_content.php">Buyer Checklist</a></li>
									<li><a href="advice_content.php">Seller Checklist</a></li>
									<li><a href="advice_content.php">Mortgage Checklist</a></li>
									<li><a href="advice_content.php">Sale Transaction Fee & Charges</a></li>
									<li><a href="advice_content.php">Mortgage Calculator</a></li>
									<li><a href="advice_content.php">RERA Sale Forms</a></li>
									<li><a href="advice_content.php">Registration Trustees</a></li>
								</ul>   
								  
							</div>
					 
							<div class="col_2">
							 
								
								<ul>
									<li><a href="advice_content.php">RERA Sale Property Registration</a></li>
									<li><a href="advice_content.php">RERA Service Charge Index - Sale</a></li>
									<li><a href="advice_content.php">RERA Sale Property Laws</a></li>
									<li><a href="advice_content.php">Home Inspection</a></li>
									<li><a href="advice_content.php">Seller Tips</a></li>
									<li><a href="advice_content.php">Makani Dubai</a></li>
									<li><a href="advice_content.php">Tenant Checklist</a></li>
								</ul>   
								  
							</div>
					 
							<div class="col_2">
							 
								
								<ul>
									<li><a href="advice_content.php">Landlord Checklist</a></li>
									<li><a href="advice_content.php">RERA Rental Index</a></li>
									<li><a href="advice_content.php">RERA Rental Increase Calculator</a></li>
									<li><a href="advice_content.php">RERA Service Charge Index - Rental</a></li>
									
									<li><a href="advice_content.php">RERA Rental Committee</a></li>
									<li><a href="advice_content.php">RERA Rental Property Laws</a></li>
									<li><a href="advice_content.php">RERA FAQs</a></li>
								</ul>   
								  
							</div>
							
						</div>
					</li>
					<li><a href="homeservices_map.php">HOME SERVICES</a>
						<div class="dropdown_5columns services"><!-- Begin 4 columns container -->
							
							<div class="col_2">
							 
								<h3>Home Maintenance</h3>
								<ul>
									<li><a href="homeservices_map.php">Carpentry</a></li>
									<li><a href="homeservices_map.php">Landscaping</a></li>
									<li><a href="homeservices_map.php">Electrical</a></li>
									<li><a href="homeservices_map.php">Painting</a></li>
									<li><a href="homeservices_map.php">Plumbing</a></li>
									<li><a href="homeservices_map.php">A/C Technician</a></li>
								</ul>   
								  
							</div>
					 
							<div class="col_2">
							 
								<h3>Home Decor</h3>
								<ul>
									<li><a href="homeservices_map.php">Painting</a></li>
									<li><a href="homeservices_map.php">Hardwood Installation</a></li>
									<li><a href="homeservices_map.php">Carpet Installation</a></li>
									<li><a href="homeservices_map.php">Tile Installation</a></li>
									<li><a href="homeservices_map.php">Decorating Service</a></li>
									
								</ul>   
								  
							</div>
					 
							<div class="col_2">
							 
								<h3>Home Immprovement</h3>
								<ul>
									<li><a href="homeservices_map.php">Architecture</a></li>
									<li><a href="homeservices_map.php">General Contracting</a></li>
									<li><a href="homeservices_map.php">Home Building</a></li>
									<li><a href="homeservices_map.php">Engineering</a></li>
								</ul>   
								  
							</div>
							 
						</div>
					</li>
				 
				</ul>
			</div>
			
			
          </div>
        </div>
		
      </div>
	  
    </div>
  
   <!-- ################-->
 <!-- END TOP MENU -->
 <!-- ################-->		
  </nav>
	
  <!-- end header 3 -->
  <div class="bg-wraper parallax-point-event">
	<br/>
	<div class="container">
		<div class="row-fluid" >
		<!-- FEATURE ITEM-->
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
			function hidepopup(){
				document.getElementById('light').style.display='none';
				document.getElementById('fade').style.display='none';
			}
			
			function showpopup(){
				document.getElementById('light').style.display='block';
				document.getElementById('fade').style.display='block';
			}
		</script>		
			
			
			
			
						
		<!--side bar here-->

		@include('layouts.sidebar')

        <!--your data here  or your contents here-->
				@yield('content')
			<div class="clear10"></div>
			
			
				
		
		<!-- FEATURE ITEM-->
		
		<!-- FEATURE ITEM-->
		</div><!--/ ROW-FLUID-->
		
	
	
	
	</div><!--/CONTAINER-->
</div><!-- / BG WRAPER-->
  
  
			<!-- END HEADER headertop NAV -->


			
</section><!--/ TOP SECTION-->

 

<!-- /SERVICE SECTION-->			

	
	<!-- /FEATURE section-->
	
	<!-- /SLOGAN section-->
	
	

<!-- /TEAM SECTION-->			




  

<!-- ###################### FOOTER #######################
    ================================================== -->
<footer class="footer">
<section id="contact-section" class="arrow_box">
  <div class="container">
	<script>
	$(document).ready(function(){

		// hide #back-top first
		$("#back-top").hide();
		
		// fade in #back-top
		$(function () {
			$(window).scroll(function () {
				if ($(this).scrollTop() > 100) {
					$('#back-top').fadeIn();
				} else {
					$('#back-top').fadeOut();
				}
			});

			// scroll body to 0px on click
			$('#back-top a').click(function () {
				$('body,html').animate({
					scrollTop: 0
				}, 800);
				return false;
			});
		});

	});
	</script>
	
	<p id="back-top">
		<a href="#topnavbar"><img src="images/backtotop.png"></a>
	</p>
	
      <!--/ CONTAC HEADER-->
    <div class="row-fluid">
	  <div class="footer-nav">
		  <div class="span2">
			<h4 class="main-color-line"> <span>General</span></h4>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Gestimate</a></li>
				<li><a href="#">Advertise</a></li>
				<li><a href="#">Ad Choice</a></li>
				<li><a href="#">Careers</a></li>
				<li><a href="#">Help</a></li>
				<li><a href="#">T&C </a></li>
				<li><a href="#">FAQs</a></li>
			</ul>
		  </div>
		  <div class="span2">
			<h4 class="main-color-line"> <span>Residential</span></h4>
			<ul>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
				<li><a href="#">Others</a></li>
			</ul>
			<h4 class="main-color-line"> <span>Landloards</span></h4>
			<ul>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
			</ul>
		  </div>
		  <div class="span2">
			<h4 class="main-color-line"> <span>Commercial</span></h4>
			<ul>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
				<li><a href="#">Others</a></li>
			</ul>
			<h4 class="main-color-line"> <span>Sellers</span></h4>
			<ul>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
			</ul>
		  </div>
		  <div class="span2">
			<h4 class="main-color-line"> <span>Advice</span></h4>
			<ul>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
				<li><a href="#">Others</a></li>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
				<li><a href="#">Others</a></li>
			</ul>
		  </div>
		  <div class="span2">
			<h4 class="main-color-line"> <span>Agencies</span></h4>
			<ul>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
				
			</ul>
			<h4 class="main-color-line"> <span>Agents</span></h4>
			<ul>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
			</ul>
		  </div>
		  <div class="span2">
			<h4 class="main-color-line"> <span>Home Services</span></h4>
			<ul>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
				<li><a href="#">Others</a></li>
				<li><a href="#">Appartments</a></li>
				<li><a href="#">Villas</a></li>
				<li><a href="#">Town House</a></li>
				<li><a href="#">Land</a></li>
				<li><a href="#">Others</a></li>
			</ul>
		  </div>
	  </div>
	  <div class="footer-letter">
	    <div class="span12">
			<h4 class="main-color-line"> <span>Newsletter</span></h4>
			<p>Sign up to our newletter and never<br/> miss cool news again.</p>
		
			<form>
				<input type="text" name="email" class="email-text" value="" placeholder="Enter Email">
				<input type="submit" class="btn-submit" value="Subscribe">
			</form>
			
			<a href="http://twitter.com/minimalmonkey" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a>
			<a href="http://facebook.com" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a>
			<a href="http://plus.google.com" class="icon-button google-plus"><i class="icon-google-plus"></i><span></span></a>
			<a href="http://linkedin.com" class="icon-button linkedin"><i class="icon-linkedin"></i><span></span></a>
			
			<!--
			<a href="#">
				<img src="images/facebook.png">
			</a> &nbsp;
			
			<a href="#">
				<img src="images/twitter.png">
			</a> &nbsp;
			
			<a href="#">
				<img src="images/linkedin.png">
			</a> &nbsp;
			
			<a href="#">
				<img src="images/googleplus.png">
			</a>-->
			
		</div>
	  </div>
		 <div class="clear"></div>
		 
     
     
	  
		
		
		
		
	
	
	  
    </div><!-- / ROW-->
    
  </div>
		<br/>
		<div class="copyright">
			<div class="container">
			© 2015 GISTLER. ALL RIGHTS RESERVED.
			</div>
		 </div>
	</section>
	
</footer>

<!-- END: FOOTER -->
</div>
</body>
</html>