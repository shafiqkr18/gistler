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
<meta name="_token" content="{!! csrf_token() !!}"/>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- Le fav and touch icons -->


<link rel="shortcut icon" href="{{URL::asset('public/assets/ico/favicon.ico')}}">
	<!-- If you want the jQuery UI "flick" theme, you can use this instead, but it's not scoped to just Tag-it like tagit.ui-zendesk is: -->
    <!--   <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/flick/jquery-ui.css"> -->
	
    <link href="{{URL::asset('public/css/magicsuggest.css')}}" rel="stylesheet">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
	 
    <script src="{{URL::asset('public/js/magicsuggest.js')}}"></script>
	<script type="text/javascript">
      $(function() {
      	var loc_data = (function () {
			var json = null;
			$.ajax({
				'method': 'POST',
				'type' : 'POST',
				'data' : {'_token': $('meta[name=_token]').attr('content')},
				'async': false,
				'global': false,
				'url': main_path+"/home/get_locationData",
				'dataType': "json",
				'success': function (data) {
					json = data;
				}
			});
			return json;
		})(); 
		//console.log(loc_data);
        // var ms1 = $('#ms1').magicSuggest({
        //   data: ['Downtown Burj Dubai','Dubai Healthcare City','Dubai Media City','Dubai Marina','Jumeirah Lake Towers','Palm Jumeirah','Murjan','Marina Wharf 1','Royal Oceanic','Princess','Pentominium','Sparkle Tower 2','Silverene']
        // });
        var ms1;	
         ms1 = $('#ms1').magicSuggest({
            data: loc_data,
            sortOrder: 'name',
            valueField: 'name',
           // minChars: 2,
           // maxResults: false,
            name: 'ms1',
            //allowFreeEntries: false,
           // selectionPosition: 'right',
           // groupBy: 'utenti',
           // maxDropHeight: 200
        });
      });
    </script>
	<script src="{{URL::asset('public/assets/js/jquery.js')}}" type="text/javascript"></script>
<script>
var screenname = 'home';
var main_path = '{{ url('/') }}';
$.noConflict();
</script>

<script src="{{URL::asset('public/assets/js/jquery.prettyPhoto.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.localscroll-1.2.7-min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.scrollTo-1.4.2-min.js')}}"></script>


<script src="{{URL::asset('public/assets/js/custom.js')}}" type="text/javascript"></script>

<script type="text/javascript">
jQuery(document).ready(function(){
	jQuery('#nav2').localScroll(1000);
	jQuery('#nav6').localScroll(1000);
	
	//.parallax(xPosition, speedFactor, outerHeight) options:
	//xPosition - Horizontal position of the element
	//inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
	//outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport
	jQuery('#header-section').parallax("50%", 0.1);
	jQuery('#features-section').parallax("50%", 0.1);
	jQuery('#slogan-section-2').parallax("50%", 0.1);
	jQuery('.bg').parallax("50%", 0.3);
	
})
</script>

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
					 
					 <!--  
					<a href="#"> SIGN IN &nbsp; / &nbsp; JOIN </a><a href="#">ENGLISH &nbsp; &nbsp; <img src="images/drop-icon.png"></a><a href="#"><img src="images/question.png"></a>-->
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



<!-- /SERVICE SECTION-->			
<section  id="features-section" class="section-2">

	<script>
		function hidepopup(){
			document.getElementById('light').style.display='none';
			document.getElementById('fade').style.display='none';
			showlayer();
		}
		
		function showpopup(){
			document.getElementById('light').style.display='block';
			document.getElementById('fade').style.display='block';
		}
	</script>
	
	<script>
// https://developers.google.com/youtube/iframe_api_reference

// global variable for the player
var player;

// this function gets called when API is ready to use
function onYouTubePlayerAPIReady() {
  // create the global player from the specific iframe (#video)
  player = new YT.Player('video', {
    events: {
      // call this function when player is ready to use
      'onReady': onPlayerReady
    }
  });
}

function onPlayerReady(event) {
  
  // bind events
  var playButton = document.getElementById("play-button");
  playButton.addEventListener("click", function() {
    player.playVideo();
  });
  
  var pauseButton = document.getElementById("pause-button");
  var pauseButton2 = document.getElementById("fade");
  pauseButton.addEventListener("click", function() {
    player.pauseVideo();
  });
  pauseButton2.addEventListener("click", function() {
    player.pauseVideo();
  });
  
}

// Inject YouTube API script
var tag = document.createElement('script');
tag.src = "//www.youtube.com/player_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
</script>
	<div id="light" class="white_content propertymap2" style="display:none;"> <a href = "javascript:void(0)" id="pause-button" onclick="hidepopup();"><img src="{{URL::asset('public/images/cross-icon.png')}}" style="height:30px;"></a>
		<div class="clear10"></div>
		<iframe id="video" src="//www.youtube.com/embed/W5frO-VRrL8?enablejsapi=1&html5=1" frameborder="0" class="mapiframe" allowfullscreen></iframe>
		
	</div>
	<div id="fade" class="black_overlay homevideobg" style="display:none;" onclick="hidepopup();"></div>


<style>


</style>

<video autoplay  poster="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/polina.jpg" id="bgvid" >
  <!-- WCAG general accessibility recommendation is that media such as background video play through only once. Loop turned on for the purposes of illustration; if removed, the end of the video will fade in the same way created by pressing the "Pause" button  -->
<source src="//demosthenes.info/assets/videos/polina.webm" type="video/webm">
<source src="//demosthenes.info/assets/videos/polina.mp4" type="video/mp4">
</video>

	<div class="bg-wraper parallax-point-event" id="hidelayer">
	
	<div class="container">
		
		<div class="videofront">
		
			<div class="contentdv" id="hidecontent">
				<br/><br/><br/><br/><br/>
				<p>The best place to <br/>find your dream home</p><br/>
				<div class="testdiv" style="display:none;">This is a test<span>X</span></div>


				<a onclick="hidelayer();" id="play-button"><img src="{{URL::asset('public/images/play-cion.png')}}"></a>
			</div>
		
			<span class="gobottom bottomlink" id="nav6">
					<a href="#slogan-section-2" title="">
						<img src="{{URL::asset('public/images/icon-down-arrow.png')}}">
					</a>
			</span>
		</div>
	
	
	</div><!--/CONTAINER-->
</div><!-- / BG WRAPER-->
<script>
//$('.contentdv .testdiv:contains("test")').css('background-color', 'red');
//if($(".contentdv:contains('test')").length){
	//alert('test');
//}
var vid = document.getElementById('bgvid');
var pauseButton = document.querySelector('#polina button');
function vidFade() {
    vid.classList.add('stopfade');
}
vid.addEventListener('ended', function () {
	document.getElementById('hidelayer').style.cssText = 'background:rgba(0,0,0,0.4);';
		document.getElementById('hidecontent').style.cssText = 'display:block;';
    vid.play();
    //vidFade();
});
pauseButton.addEventListener('click', function () {
    vid.classList.toggle('stopfade');
    if (vid.paused) {
        vid.play();
        pauseButton.innerHTML = 'Pause';
    } else {
        vid.pause();
        pauseButton.innerHTML = 'Paused';
    }
});
//# sourceURL=pen.js

function showlayer(){
	document.getElementById('hidelayer').style.cssText = 'background:rgba(0,0,0,0.4);';
	document.getElementById('hidecontent').style.cssText = 'display:block;';
}


function hidelayer(){
	document.getElementById('hidelayer').style.cssText = 'background:rgba(0,0,0,0.0);';
	document.getElementById('hidecontent').style.cssText = 'display:none;';
	showpopup();
}
</script>
</section>
	
	<!-- /FEATURE section-->
	
	<!-- /SLOGAN section-->
	<section class="section-3" id="slogan-section-2">
		<div class="bg parallax-point-event">
			<div class="container">
		
			<!-- BADGE FEATURED-->
			<div class="row-fluid">
				<div class="span12 text-center">
					<div class="videoframe">
						<div class="video_wrapper">
							<h3>Available on smart mobile devices</h3>
						</div>
						<iframe src="https://player.vimeo.com/video/148321429?color=ffffff&title=0&byline=0&portrait=0" width="400" height="250" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
					</div>
				</div>
			</div>	
			<!-- / BADGE FEATURED-->
			
			<!--  FEATURED ITEMS -->
					
					
			<!--  FEATURED ITEMS -->
					
				
				
			</div><!-- /container-->
		</div><!-- /row-->

</section> <!--/SLOGAN section-->
	

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