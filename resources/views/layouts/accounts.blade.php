<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Gistler</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<meta name="_token" content="{!! csrf_token() !!}"/>
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
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- Le fav and touch icons -->


<link rel="shortcut icon" href="{{URL::asset('public/assets/ico/favicon.ico')}}">
	<!-- If you want the jQuery UI "flick" theme, you can use this instead, but it's not scoped to just Tag-it like tagit.ui-zendesk is: -->
    <!--   <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css"> -->
	
  
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
	 <script>
	 var APP_URL = {!! json_encode(url('/')) !!};
            // When the document is ready
            $(document).ready(function () {
            	
            	$('#account_div input:radio').click(function() {
				    if ($(this).val() === '1') {
				      window.location.replace(APP_URL+'/login');
				    } else if ($(this).val() === '2') {
				      window.location.replace(APP_URL+'/register');
				    } 
				  });
                //validation rules
                //by default it will append a <label class="error> element to the invalid input
                //and will add a "error" class to the input
                $("#frmlogin").validate({
                    rules: {
                        "email": {
                            required: true,
                            email: true
                        },  
                        "password": {
                            required: true
                        } 
                    }
                });
				
				$("#form-signup").validate({
                    rules: {
                        "name": {
                            required: true
                        },  
                        "email": {
                            required: true,
							email: true
                        },  
                        "re-email": {
							required: true,
							equalTo: "#email"
						},  
                        "password": {
                            required: true
                        },  
                        "re-password": {
                            required: true,
							equalTo: "#password"
                        }
						
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

<!--START MAIN-WRAPPER--> 
<div class="main-wrapper">
<!--START MAIN-WRAPPER--> 

<!-- TOP SECTION-->
<section class="headertop needhead homeheader homepage" id="header-section">

 <!-- ################-->
 <!-- START TOP MENU -->
 <!-- ################-->
  <script> $(window).bind("load", function() { $(".se-pre-con2").fadeOut("slow"); }); </script>
<div class="se-pre-con2"></div>
<nav class="nav-top">
    <div class="navbar navbar-static-top" id="topnavbar"> 
      <!-- navbar-fixed-top -->
      <div class="navbar-inner" id="navbartop">
        <div class="container"> 
          <div id="main-nav" class="scroller-spy">
		  
            
			
			<div class="span12">
				<div class="span3 header-left">
					<a href="{{ url('/') }}">Home</a> / <a href="#">Page Name</a>
				</div>
				<div class="span3 logo">
					<a href="{{ url('/') }}"></a>
				</div>
				<div class="span6 header-right">
					
					 <ul id="menu3">
						
						<li><a href="{{ url('/faq') }}" class="questionmark">&nbsp;</a></li>
						<li><a href="#" class="drop">ENGLISH  &nbsp; &nbsp;</a><!-- Begin 4 columns Item -->
						 
							<div class="dropdown_1column"><!-- Begin 4 columns container -->
							 
								<div class="col_1">
									
									<ul>
										<li><a href="#">English</a></li>
										<li><a href="#">Arabic</a></li>
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
			</div>
			
          </div>
        </div>
      </div>
    </div>
  
   <!-- ################-->
 <!-- END TOP MENU -->
 <!-- ################-->		
			</nav>
			<!-- END HEADER headertop NAV -->

		 @yield('content')	

			
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
				<input type="submit" class="btn-submit" value="Subscribe">
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
<script type="text/javascript">
$.ajaxSetup({
   headers: { 'X-CSRF-Token' : $('meta[name=_token]').attr('content') }
});
</script>
</body>
</html>