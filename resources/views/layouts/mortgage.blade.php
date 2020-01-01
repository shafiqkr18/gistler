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
<link href="{{URL::asset('public/assets/js/google-code-prettify/prettify.css')}}" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css'>
<meta name="_token" content="{!! csrf_token() !!}"/>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- Le fav and touch icons -->
<link href="{{URL::asset('public/css/magicsuggest2.css')}}" rel="stylesheet">
<link rel="shortcut icon" href="{{URL::asset('public/assets/ico/favicon.ico')}}">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  
	<link href="{{URL::asset('public/css/ion.rangeSlider.css')}}" rel="stylesheet" type="text/css">
<link href="{{URL::asset('public/css/ion.rangeSlider.skinNice.css')}}" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="{{URL::asset('public/js/ion.rangeSlider.min.js')}}"></script>
<script>
        var main_path = '{{ url('/') }}';
</script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
		<script>
            // When the document is ready
            $(document).ready(function () {
            	  $.ajaxSetup({
				        header:$('meta[name="_token"]').attr('content')
				    });
                //validation rules
                //by default it will append a <label class="error> element to the invalid input
                //and will add a "error" class to the input
                
				$("#form-mortgage").validate({
                    rules: {
                        "min-salary": {
                            required: true,
							number: true
                        },  
                        "down-payment": {
                            required: true,
							number: true
                        },  
                        "payment": {
							required: true,
							number: true
						},  
                        "loan-amount": {
                            required: true,
							number: true
                        },  
                        "yourname": {
                            required: true
                        },  
                        "yournumber": {
                            required: true
                        },  
                        "youremail": {
                            required: true,
							email: true
                        },  
                        "message": {
                            required: true
                        }
						
                    }
                });
            });
        </script>
		
                
<!-- plus a jQuery UI theme, here I use "flick" -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.10.4/themes/flick/jquery-ui.css">
  
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
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
	
<script src="{{URL::asset('public/assets/js/jquery.js')}}" type="text/javascript"></script>
<script>
$.noConflict();
</script>
	
<script src="{{URL::asset('public/assets/js/jquery.prettyPhoto.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.localscroll-1.2.7-min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.scrollTo-1.4.2-min.js')}}"></script>

<script src="{{URL::asset('public/assets/js/custom.js')}}" type="text/javascript"></script>

	
</head>
<body data-spy="scroll" data-target=".scroller-spy" data-twttr-rendered="true">
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


			<?php
			if(isset($_POST['btnsubmit'])){
			?>
			<script>
				function hidepopup2(){
					document.getElementById('light2').style.display='none';
					document.getElementById('fade2').style.display='none';
				}
			</script>
			<div id="light2" class="white_content"> <a href = "javascript:void(0)" onclick="hidepopup2();">X</a>
				<h3>Thank You</h3>
				<p>You will be contacted by the bank soon</p>
			</div>
			<div id="fade2" class="black_overlay" onclick="hidepopup2();"></div>
			<?php
			}
			?>

<div id="light" class="white_content mortpopup" style="display:none;"> <a href = "javascript:void(0)" onclick="hidepopup();"><img src="{{URL::asset('public/images/icon-cross.png')}}')}}"></a>
	
	<div class="headerleftimg">
		<img src="{{URL::asset('public/images/dubaibank.png')}}">
	</div>
	<div class="headerrightdetail">
		<h4>BANK NAME</h4>
		<h5>NMLS #66247</h5>
		<a href="#">Visit Website</a>
	</div>
	<div class="clear10"></div>
	<form method="post" id="form-mortgage" action="">
	<ul class="mortlistp">
		<li><h2>Loan Details <a class="right">Advertising Disclosure</a></h2> </li>
		<li><p>Loan Type    
			<select class="right popsel">
				<option>All Type</option>
				<option>Type 1</option>
				<option>Type 2</option>
			</select>
		</p></li>
		
		<li><p>Minimum Salary    <input type="text" name="min-salary" id="min-salary" value="15000" class="form-control right poptxt numeric"></p></li>
		<li><p>Down Payment    <input type="text" name="down-payment" value="35" id="down-payment" class="form-control right poptxt"></p></li>
		<li><p>Payment (principal & interest)    <input type="text" name="payment" id="payment" value="632" class="form-control right poptxt"></p></li>
		<li><p>Loan amount    <input type="text" name="loan-amount" id="loan-amount" value="130400" class="form-control right poptxt"></p></li>
		<li><p class="formpara">Quote ID    <span class="right">GQ-LJDYQHMT </span></p> <a class="tooltips-bottom " ><img src="{{URL::asset('public/images/question.png')}}"><span><p>Lorem ipsum dolor sit amet, ne mutat delicata vim. Nec solum mazim invenire ea, sit mutat vituperatoribus ea.</p></span></a></li>
		<li><p class="formpara">Date submitted    <span class="right">11/10/2015 at 1:34 PM </span> </p> <a class="tooltips-bottom " ><img src="{{URL::asset('public/images/question.png')}}"><span><p>Lorem ipsum dolor sit amet, ne mutat delicata vim. Nec solum mazim invenire ea, sit mutat vituperatoribus ea.</p></span></a></li>
	</ul>
	<div class="clear10"></div>
	
	<div class="width50">
		<p>Your Name</p>
		<input type="text" placeholder="Type your name" name="yourname" id="yourname" class="poptxt2">
		
		<p>Your Phone</p>
		<input type="text" placeholder="Type your number" name="yournumber" id="yournumber" class="poptxt2">
		
		<p>Your Email</p>
		<input type="text" placeholder="Type your email" name="youremail" id="youremail" class="poptxt2">
	</div>
	<div class="width50">
		<textarea class="poparea" name="message" id="message" placeholder="Type your message"></textarea>
		<input type="submit" class="btngist btnapply btnpopup" name="btnsubmit" value="Submit">
		<div class="clear10"></div>
		<p> &nbsp;&nbsp;
		<input type="checkbox" name="test" id="selectboxpop" class="checkboxslid">
		<label for="selectboxpop">&nbsp; Apply to selected banks</label> 
		</p>
	</div>
	</form>
	<div class="clear10"></div>
	
	<div class="terms">
		<p>By clicking "Contact Lender" (1) I authorize Zillow to send the information I entered above to Sebonic Financial and (2) I authorize Sebonic Financial to deliver or cause to be delivered to me at that phone number, tele marketing calls which may use an automatic telephone dialing system, an artificial or prerecorded voice or text message</p>
	</div>
	
</div>
<div id="fade" class="black_overlay" onclick="hidepopup();" style="display:none;"></div>
<!--START MAIN-WRAPPER--> 
<div class="main-wrapper">
<!--START MAIN-WRAPPER--> 

<!-- TOP SECTION-->
<section class="section-2 mainnav mortgagepage" id="header-section">
	<div class="preload">
		<img src="{{URL::asset('public/images/black-heart.png')}}">
		<img src="{{URL::asset('public/images/black-share.png')}}">
		<img src="{{URL::asset('public/images/black-report.png')}}">
	</div>
 <!-- ################-->
 <!-- START TOP MENU -->
 <!-- ################-->
 <script> $(window).bind("load", function() { $(".se-pre-con2").fadeOut("slow"); }); 

</script>
<div class="se-pre-con2"></div>
<nav class="nav-top headerstyle2">
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
					<li><a href="{{ url('/homeservices_map') }}">HOME SERVICES</a>
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
  
		<script>
			$(document).ready(function()
				{
					$(document).on('submit', '#map-filter', function()
					{
						var data = $(this).serialize();
						
						
						$.ajax({
						
						type : 'POST',
						url  : 'mortgage_filter.php',
						beforeSend: function(){
							$(".se-pre-con").fadeIn("slow");
					    },
						data : data,
						success :  function(data)
								   {						
										
									$(".result").fadeIn(1000).show(function()
									{
										$(".result").html(data);
										
									});
										$(".se-pre-con").fadeOut("slow");
										
								   }
						});
						
						return false;
					});
					
					
					
					$('#salary').keyup(function() {
						var numbers = $(this).val();
						$(this).val(numbers.replace(/\D/, ''));
					});
					
					$('#hprice').keyup(function() {
						var numbers = $(this).val();
						$(this).val(numbers.replace(/\D/, ''));
					});
					
					$('#deposite').keyup(function() {
						var numbers = $(this).val();
						$(this).val(numbers.replace(/\D/, ''));
					});
					
				});
				
				
			</script>

		<div class="bottomnav">
			<div class="container"> 
				<div class="scroller-spy">
					<div class="bottomnavigation">
						<form method="post" id="map-filter">
						<input type="hidden" name="selectedproptery" id="selectedproptery">
						
						<ul id="menu2">
							<li class="menu_right"><a href="#"><b>Filter Your Results &nbsp;  </b></a></li>
							<li >
								<input type="text" name="salary" id="salary"  placeholder="Your Monthly Salary" class="headsearch2">
							</li>
							<li >
								<input type="text" name="price" id="hprice"  placeholder="Home Price" class="headsearch2">
							</li>
							
							<li >
								<input type="text" name="deposite" id="deposite"  placeholder="Deposit" class="headsearch2">
							</li>
							
							<li class="rangeslide noborderright">
								<input type="text" id="someID" name="rangeName" value="10;100" />
							</li>
							
							<li><input type="submit" name="submit" value="Submit" class="headersubmit"></li>
						 
						</ul>
						<!-- <input type="submit" id="formsubmitbtn2" style="display:none;"> -->
						</form>
						
					</div>
				</div>
			</div>
		</div>
	  
    </div>
  <script>
$("#someID").ionRangeSlider({
    min: 10,                        // ??????????? ????????
    max: 100,                       // ???????????? ????????
    from: 30,                       // ????????????????? ???????? ??
    to: 80,                         // ????????????????? ???????? ??
    type: "single",                 // ??? ????????
    step: 1,                       // ??? ????????
    postfix: "",              // ???????? ????????
    onChange: function(obj){        // callback ???????, ?????????? ??? ?????? ????????? ?????????
        console.log(obj);
    },
    onFinish: function(obj){        // callback ???????, ?????????? ???? ??? ? ????? ?????????????
        console.log(obj);
    }
});
</script>
   <!-- ################-->
 <!-- END TOP MENU -->
 <!-- ################-->		
  </nav>
  <div class="se-pre-con" style="display:none;"></div>
	
  
  <div class="bg-wraper parallax-point-event">
	<br/>
	<div class="container">

	@yield('content')  

	<div class="clear10"></div>
	
	</div><!--/CONTAINER-->
</div><!-- / BG WRAPER-->
  
  
			<!-- END HEADER headertop NAV -->

<div class="clear10"></div>
			
</section><!--/ TOP SECTION-->
 

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
		<a href="#topnavbar"><img src="{{URL::asset('public/images/backtotop.png')}}"></a>
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
				<input type="submit" class="btn-submit" value="subscribe">
			</form>
			
			<a href="http://twitter.com/minimalmonkey" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a>
	<a href="http://facebook.com" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a>
	<a href="http://plus.google.com" class="icon-button google-plus"><i class="icon-google-plus"></i><span></span></a>
	<a href="http://linkedin.com" class="icon-button linkedin"><i class="icon-linkedin"></i><span></span></a>
			
			
			
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