<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Gistler</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<link rel="stylesheet" href="{{URL::asset('public/css/jquery.mCustomScrollbar2.css')}}">
<link href="{{URL::asset('public/assets/js/google-code-prettify/prettify.css')}}" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<link rel="stylesheet"  href="{{URL::asset('public/src/css/lightslider.css')}}"/>
<link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css'>
<meta name="_token" content="{!! csrf_token() !!}"/>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- Le fav and touch icons -->
<link href="{{URL::asset('public/css/magicsuggest3.css')}}" rel="stylesheet">
<link rel="shortcut icon" href="{{URL::asset('public/assets/ico/favicon.ico')}}">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  
<script>
var screenname = 'homeservices_map';
var main_path = '{{ url('/') }}';
$.noConflict();
</script>
    
<script src="{{URL::asset('public/assets/js/jquery.js')}}" type="text/javascript"></script>
<script src="{{URL::asset('public/js/magicsuggest4.js')}}"></script>
  
  <script src="{{URL::asset('public/js/jquery.mCustomScrollbar.concat.min.js')}}"></script>

<script src="{{URL::asset('public/assets/js/jquery.prettyPhoto.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.localscroll-1.2.7-min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.scrollTo-1.4.2-min.js')}}"></script>

<script src="{{URL::asset('public/assets/js/custom.js')}}" type="text/javascript"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/infobox/src/infobox.js"></script>


<script src="{{URL::asset('public/src/js/lightslider.js')}}" type="text/javascript"></script>





    
	

</head>
<body data-spy="scroll" data-target=".scroller-spy" data-twttr-rendered="true">

<!--START MAIN-WRAPPER--> 
<div class="main-wrapper">
<!--START MAIN-WRAPPER--> 

<!-- TOP SECTION-->
<section class="headertop needhead mapdiv" id="header-section">

 <!-- ################-->
 <!-- START TOP MENU -->
 <!-- ################-->
 
  
 
  <!-- header7.php was included here -->
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
  
  
  
  <script>
	$(document).ready(function()
		{
			$(document).on('submit', '#map-filter', function()
			{
				var data = $(this).serialize();
				
				
				$.ajax({
				
				type : 'POST',
				url  : 'services_load.php',
				beforeSend: function(){
					$(".se-pre-con").fadeIn("slow");
				},
				data : data,
				success :  function(data)
						   {						
								
							$("#map_load").fadeIn(1000).show(function()
							{
								$("#map_load").html(data);
								
							});
								$(".se-pre-con").fadeOut("slow");
								
						   }
				});
				
				return false;
			});
			
			
		});
		
		
		function myFunction(){			
			document.getElementById("formsubmitbtn").click(); // Click on the checkbox
		}
		
		function selectEmirate(str){
			document.getElementById('emirate').value = str;
			myFunction();
			$("#form_reset").addClass("btnactive");
		}
		
		function changpointers(str){
			document.getElementById('ptype').value = str;
			myFunction();
			$("#form_reset").addClass("btnactive");
		}
	 
		
		function active_reset() {
			myFunction();
			$("#form_reset").addClass("btnactive");
		}
		$(document).ready(function() {
		  $(window).keydown(function(event){
			if(event.keyCode == 13) {
			  event.preventDefault();
			  return false;
			}
		  });
		});
	</script>
		<script type="text/javascript">
	jQuery( document ).ready(function( $ ) {
	  // Code that uses jQuery's $ can follow here.
	});
      $(function() {
        var ms1 = $('#ms1').magicSuggest({
          data: ['Downtown Burj Dubai','Dubai Healthcare City','Dubai Media City','Dubai Marina','Jumeirah Lake Towers','Palm Jumeirah','Murjan','Marina Wharf 1','Royal Oceanic','Princess','Pentominium','Sparkle Tower 2','Silverene']
        });
      });
    </script>
 	
  
		<div class="bottomnav">
			<div class="container"> 
				<div class="scroller-spy">
					<div class="bottomnavigation">
						<form method="post" id="map-filter">
						<input type="hidden" name="selectedproptery" id="selectedproptery">
						<input type="hidden" name="slideremove" id="slideremove" value="">
						<ul id="menu2">
     
							<li class="menu_right"><a href="#" class="drop">Emirates &nbsp; &nbsp;  &nbsp; </a> 
     
								<div class="dropdown_1column align_right">
									<div class="col_1">
										<input type="hidden" name="emirate" id="emirate" value="">
										<ul class="simple">
											<li><a href="javascript:;" onclick="selectEmirate(1);">Abu Dhabi</a></li>
											<li><a href="javascript:;" onclick="selectEmirate(2);">Ajman</a></li>
											<li><a href="javascript:;" onclick="selectEmirate(3);">Dubai</a></li>
											<li><a href="javascript:;" onclick="selectEmirate(4);">Sharjah</a></li>
											<li><a href="javascript:;" onclick="selectEmirate(5);">Umm Al Quwain</a></li>
											<li><a href="javascript:;" onclick="selectEmirate(6);">Fujairah</a></li>
											<li><a href="javascript:;" onclick="selectEmirate(7);">Ras Al Khaimah</a></li>
										</ul>   
									</div>
								</div>
								 
							</li>
							<li class="searchboxres">
								<span id="counterselect">0</span>
								<div id="ms1" class="headsearch"></div>
								<input type="text" name="search"  placeholder="Search" id="tags2" class="headsearch" style="display:none;">
							</li>
							<script>
							$(document).ready(function() {
								$('#ui-id-1').click(function() {
									myFunction();
								});
							 });
							</script>
							
							
							<li><a href="#" class="drop">Community &nbsp; </a>
								<div class="dropdown_1column align_right">
								 
										<div class="col_1">
											
											<ul class="simple ">
												<li><input type="checkbox" id="property2" onclick="active_reset()" name="propertytype[]" value="1"> <label for="property2">Apartment (100)</label></li>
												<li><input type="checkbox" id="property3" onclick="active_reset()" name="propertytype[]" value="2"> <label for="property3">Duplex (100)</label></li>
												<li><input type="checkbox" id="property4" onclick="active_reset()" name="propertytype[]" value="3"> <label for="property4">Land Plot (100)</label></li>
												<li><input type="checkbox" id="property6" onclick="active_reset()" name="propertytype[]" value="4"> <label for="property6">Office (100)</label></li>
												<li><input type="checkbox" id="property7" onclick="active_reset()" name="propertytype[]" value="5"> <label for="property7">Penthouse (100)</label></li>
												<li><input type="checkbox" id="property8" onclick="active_reset()" name="propertytype[]" value="6"> <label for="property8">Retails Space (100)</label></li>
												
												<li><input type="checkbox" id="property9" onclick="active_reset()" name="propertytype[]" value="7"> <label for="property9">Villa/House (100)</label></li>
												<li><input type="checkbox" id="property10" onclick="active_reset()" name="propertytype[]" value="8"> <label for="property10">Townhouse (100)</label></li>
												<li><input type="checkbox" id="property11" onclick="active_reset()" name="propertytype[]" value="9"> <label for="property11">Warehouse (100)</label></li>
												<li><input type="checkbox" id="property12" onclick="active_reset()" name="propertytype[]" value="10"> <label for="property12">Buildings (100)</label></li>
												
											</ul>   
											  
										</div>
										 
								</div>
							</li>
							<li><a href="#" class="drop">All Companies &nbsp; </a>
								<div class="dropdown_1column align_right">
								 
										<div class="col_1">
											
											<ul class="simple ">
												<li><input type="checkbox" id="property2" onclick="active_reset()" name="propertytype[]" value="1"> <label for="property2">Apartment (100)</label></li>
												<li><input type="checkbox" id="property3" onclick="active_reset()" name="propertytype[]" value="2"> <label for="property3">Duplex (100)</label></li>
												<li><input type="checkbox" id="property4" onclick="active_reset()" name="propertytype[]" value="3"> <label for="property4">Land Plot (100)</label></li>
												<li><input type="checkbox" id="property6" onclick="active_reset()" name="propertytype[]" value="4"> <label for="property6">Office (100)</label></li>
												<li><input type="checkbox" id="property7" onclick="active_reset()" name="propertytype[]" value="5"> <label for="property7">Penthouse (100)</label></li>
												<li><input type="checkbox" id="property8" onclick="active_reset()" name="propertytype[]" value="6"> <label for="property8">Retails Space (100)</label></li>
												
												<li><input type="checkbox" id="property9" onclick="active_reset()" name="propertytype[]" value="7"> <label for="property9">Villa/House (100)</label></li>
												<li><input type="checkbox" id="property10" onclick="active_reset()" name="propertytype[]" value="8"> <label for="property10">Townhouse (100)</label></li>
												<li><input type="checkbox" id="property11" onclick="active_reset()" name="propertytype[]" value="9"> <label for="property11">Warehouse (100)</label></li>
												<li><input type="checkbox" id="property12" onclick="active_reset()" name="propertytype[]" value="10"> <label for="property12">Buildings (100)</label></li>
												
											</ul>   
											  
										</div>
										 
								</div>
							</li>
							<li><a href="#" class="drop">All Services &nbsp; </a>
								<div class="dropdown_1column align_right">
								 
										<div class="col_1">
											
											<ul class="simple ">
												<li><input type="checkbox" id="property2" onclick="active_reset()" name="propertytype[]" value="1"> <label for="property2">Apartment (100)</label></li>
												<li><input type="checkbox" id="property3" onclick="active_reset()" name="propertytype[]" value="2"> <label for="property3">Duplex (100)</label></li>
												<li><input type="checkbox" id="property4" onclick="active_reset()" name="propertytype[]" value="3"> <label for="property4">Land Plot (100)</label></li>
												<li><input type="checkbox" id="property6" onclick="active_reset()" name="propertytype[]" value="4"> <label for="property6">Office (100)</label></li>
												<li><input type="checkbox" id="property7" onclick="active_reset()" name="propertytype[]" value="5"> <label for="property7">Penthouse (100)</label></li>
												<li><input type="checkbox" id="property8" onclick="active_reset()" name="propertytype[]" value="6"> <label for="property8">Retails Space (100)</label></li>
												
												<li><input type="checkbox" id="property9" onclick="active_reset()" name="propertytype[]" value="7"> <label for="property9">Villa/House (100)</label></li>
												<li><input type="checkbox" id="property10" onclick="active_reset()" name="propertytype[]" value="8"> <label for="property10">Townhouse (100)</label></li>
												<li><input type="checkbox" id="property11" onclick="active_reset()" name="propertytype[]" value="9"> <label for="property11">Warehouse (100)</label></li>
												<li><input type="checkbox" id="property12" onclick="active_reset()" name="propertytype[]" value="10"> <label for="property12">Buildings (100)</label></li>
												
											</ul>   
											  
										</div>
										 
								</div>
							</li>
							
							
							<li><a >100 Home Services  Companies</a></li>
						 
						</ul>
						<input type="submit" id="formsubmitbtn" style="display:none;">
						</form>
						
					</div>
				</div>
			</div>
		</div>
	  
    </div>
  
   <!-- ################-->
 <!-- END TOP MENU -->
 <!-- ################-->		
  </nav>
  <div class="se-pre-con" style="display:none;"></div>
  <!-- header7.php code ends -->
  <script>
		$(document).scroll(function() {
			if($(this).scrollTop() > 320){
				 $("#fixedscroll").addClass("bottomfixed");
			}
			else{
				$("#fixedscroll").removeClass("bottomfixed");
			}
			
		});
		
		function myFunction() {
			
			document.getElementById("formsubmitbtn").click(); // Click on the checkbox
		}
		
		
		
		</script>
  		<!-- side bar here -->
  		@include('layouts.sidebar_homeservices')
			
			
			
  
			<!-- END HEADER headertop NAV -->

  <script>
		$(document).ready(function(){
				
				$.mCustomScrollbar.defaults.scrollButtons.enable=true; //enable scrolling buttons by default
				$.mCustomScrollbar.defaults.axis="yx"; //enable 2 axis scrollbars by default
				
				$("#content-l").mCustomScrollbar();
				
				$(".all-themes-switch a").click(function(e){
					e.preventDefault();
					var $this=$(this),
						rel=$this.attr("rel"),
						el=$(".content");
					switch(rel){
						case "toggle-content":
							el.toggleClass("expanded-content");
							break;
					}
				});
				
		});
		
	</script>
	<script>
						$(document).ready(function(){
							$("#togglemap1").click(function(){
								$("#mapdv1").toggleClass("displayblock");
							});
							$("#togglemap2").click(function(){
								$("#mapdv2").toggleClass("displayblock");
							});
							$("#togglemap3").click(function(){
								$("#mapdv3").toggleClass("displayblock");
							});
							$("#togglemap4").click(function(){
								$("#mapdv4").toggleClass("displayblock");
							});
							$("#togglemap5").click(function(){
								$("#mapdv5").toggleClass("displayblock");
							});
							$("#togglemap6").click(function(){
								$("#mapdv6").toggleClass("displayblock");
							});
							
							$("#form_reset").click(function(){
								document.getElementById('selectedproptery').value = '';
								$('#reg-form').trigger("reset");
								myFunction();
								$("#form_reset").removeClass("btnactive");
							});
							
							$('.closelist').on("click", function () {
								$(this).parents('li').fadeOut('slow', function(){
								  $(this).remove();
								  
								  // alert( $('.background-blackout').length );
								  //console.log( $('.background-blackout').length );
								});
							
								 
							});
						});
						
						function getslideid(str){
							document.getElementById('slideremove').value = str;
							$(this).delay(500).queue(function() {

								 myFunction();
								$("#form_reset").addClass("btnactive");

								 $(this).dequeue();

							  });
							
						}
						
						function get_select(str){
							document.getElementById('selectedproptery').value = str;
							myFunction();
							$("#form_reset").addClass("btnactive");
						}
						</script>
			
						<a  class="btn-refresh resetmap" id="form_reset">&nbsp;</a>
						
		<div id="map_load">
			<!--your contents here-->
			@yield('content')
		</div>
	
			
</section><!--/ TOP SECTION-->




	<!-- /FEATURE section-->
	
	
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