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
var screenname = 'agents_details';
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
	<a href = "javascript:void(0)" onclick="hidepopup();"><img src="images/crossbtn.png"></a>
	
	<form method="post" action="">
	<div class="ratingpophead">
		<h4>WRITE A REVIEW</h4>
		<h5>How likely are you to recommend John Smith</h5>
		<input id="input-21e" value="4.5" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
	</div>
	<div class="clear10"></div>
	<div class="propertyfeature" >
		<div class="ratingdvs2 ratingpop">
								
				<p> Local Knowledge</p> <input id="input-21e" value="0" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
				<div class="clear"></div>
				<p> Process Experties</p> <input id="input-21e" value="0" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
				<div class="clear"></div>
				<p> Responsiveness</p><input id="input-21e" value="0" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
				<div class="clear"></div>
				<p> Negotiation Skills</p><input id="input-21e" value="0" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
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
		<p>We require accounts to prevent fraud (no private info will be shared).</p>
		<div class="clear10"></div>
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
 <script> $(window).bind("load", function() { $(".se-pre-con2").fadeOut("slow"); }); 

</script>
<div class="se-pre-con2"></div>
<nav class="nav-top headerstyle1">
    <div class="navbar navbar-fixed-top" id="topnavbar"> 
      <!-- navbar-fixed-top -->
       @include('layouts.navbar')
	  
    </div>
  
   <!-- ################-->
 <!-- END TOP MENU -->
 <!-- ################-->		
  </nav>

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
			
			$(document).ready(function() {
				
				
				
				// Configure/customize these variables.
				var showChar = 400;  // How many characters are shown by default
				var ellipsestext = "...";
				var moretext = "More Details";
				var lesstext = "Less Details";
				

				$('.more').each(function() {
					var content = $(this).html();
			 
					if(content.length > showChar) {
			 
						var c = content.substr(0, showChar);
						var h = content.substr(showChar, content.length - showChar);
			 
						var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<button href="" class="btnreadmore morelink nodisplay" id="readmorebtn">' + moretext + '</button></span>';
			 
						$(this).html(html);
					}
			 
				});
				
				$(".morelink").click(function(){
					if($(this).hasClass("less")) {
						$(this).removeClass("less");
						$(this).html(moretext);
					} else {
						$(this).addClass("less");
						$(this).html(lesstext);
					}
					$(this).parent().prev().toggle();
					$(this).prev().toggle();
					return false;
				});
			});
		
			
		</script>	

 @include('layouts.sidebar')

 	




 		@yield('content')

 		
			<div class="clear10"></div>
			
			
				
		
		<!-- FEATURE ITEM-->
		
		<!-- FEATURE ITEM-->
		</div><!--/ ROW-FLUID-->
		
	
	
	
	</div><!--/CONTAINER-->
</div><!-- / BG WRAPER-->
  
  
			<!-- END HEADER headertop NAV -->

<div class="bg-wraper parallax-point-event">
	<div class="container">
		<div class="row-fluid posrelative">
			<div class="span12 readmorefooter2">
				
				<a href="agents_map.php" id="veiwmoredata"><img id="rotatearrow" src="{{URL::asset('public/images/viewprop.png')}}"> </a>
			</div>
		</div>
	</div>
</div>
			
</section><!--/ TOP SECTION-->

 

<!-- /SERVICE SECTION-->			

	
	<!-- /FEATURE section-->
	
	<!-- /SLOGAN section-->
	
	

<!-- /TEAM SECTION-->			




  

<!-- ###################### FOOTER #######################
    ================================================== -->

    @include('layouts.footer')

    <!-- END: FOOTER -->
</div>
</body>
</html>