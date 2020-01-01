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
<meta name="_token" content="{!! csrf_token() !!}"/>
<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!-- Le fav and touch icons -->
<link href="{{URL::asset('public/css/magicsuggest3.css')}}" rel="stylesheet">
<link rel="shortcut icon" href="{{URL::asset('public/assets/ico/favicon.ico')}}">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css')}}">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script src="{{URL::asset('public/js/magicsuggest4.js')}}"></script>
  
  
 
	

	
<script src="{{URL::asset('public/assets/js/jquery.js')}}" type="text/javascript"></script>
<script>
var screenname = 'agencies_grid';
var main_path = '{{ url('/') }}';
$.noConflict();
</script>
	
<script src="{{URL::asset('public/assets/js/jquery.prettyPhoto.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.localscroll-1.2.7-min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.scrollTo-1.4.2-min.js')}}"></script>


<script src="{{URL::asset('public/assets/js/custom.js')}}" type="text/javascript"></script>
	
	
</head>
<body data-spy="scroll" data-target=".scroller-spy" data-twttr-rendered="true" id="top">

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
<nav class="nav-top headerstyle2">
    <div class="navbar navbar-fixed-top" id="topnavbar"> 
      <!-- navbar-fixed-top -->

      @include('layouts.navbar')

      <script>
  $(document).ready(function()
    { 
      // $(document).on('submit', '#map-filter', function()
      // {
      //   var data = $(this).serialize();
        
        
      //   $.ajax({
        
      //   type : 'POST',
      //   url  : 'agencies_load.php',
      //   beforeSend: function(){
      //     $(".se-pre-con").fadeIn("slow");
      //   },
      //   data : data,
      //   success :  function(data)
      //          {            
                
      //         $("#map_load").fadeIn(1000).show(function()
      //         {
      //           $("#map_load").html(data);
                
      //         });
      //           $(".se-pre-con").fadeOut("slow");
                
      //          }
      //   });
        
      //   return false;
      // });
      
      
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
              <li><a href="#" class="drop">All Specialities &nbsp; </a>
                <div class="dropdown_1column align_right">
                 
                    <div class="col_1">
                      
                      <ul class="simple ">
                        <li><input type="checkbox" id="1property2" onclick="active_reset()" name="propertytype[]" value="1"> <label for="1property2">Apartment (100)</label></li>
                        <li><input type="checkbox" id="1property3" onclick="active_reset()" name="propertytype[]" value="2"> <label for="1property3">Duplex (100)</label></li>
                        <li><input type="checkbox" id="1property4" onclick="active_reset()" name="propertytype[]" value="3"> <label for="1property4">Land Plot (100)</label></li>
                        <li><input type="checkbox" id="1property6" onclick="active_reset()" name="propertytype[]" value="4"> <label for="1property6">Office (100)</label></li>
                        <li><input type="checkbox" id="1property7" onclick="active_reset()" name="propertytype[]" value="5"> <label for="1property7">Penthouse (100)</label></li>
                        <li><input type="checkbox" id="1property8" onclick="active_reset()" name="propertytype[]" value="6"> <label for="1property8">Retails Space (100)</label></li>
                        
                        <li><input type="checkbox" id="1property9" onclick="active_reset()" name="propertytype[]" value="7"> <label for="1property9">Villa/House (100)</label></li>
                        <li><input type="checkbox" id="1property10" onclick="active_reset()" name="propertytype[]" value="8"> <label for="1property10">Townhouse (100)</label></li>
                        <li><input type="checkbox" id="1property11" onclick="active_reset()" name="propertytype[]" value="9"> <label for="1property11">Warehouse (100)</label></li>
                        <li><input type="checkbox" id="1property12" onclick="active_reset()" name="propertytype[]" value="10"> <label for="1property12">Buildings (100)</label></li>
                        
                      </ul>   
                        
                    </div>
                     
                </div>
              </li>
              <li><a href="#" class="drop">All Agencies &nbsp; </a>
                <div class="dropdown_1column align_right">
                 
                    <div class="col_1">
                      
                      <ul class="simple ">
                        <li><input type="checkbox" id="2property2" onclick="active_reset()" name="propertytype[]" value="1"> <label for="2property2">Apartment (100)</label></li>
                        <li><input type="checkbox" id="2property3" onclick="active_reset()" name="propertytype[]" value="2"> <label for="2property3">Duplex (100)</label></li>
                        <li><input type="checkbox" id="2property4" onclick="active_reset()" name="propertytype[]" value="3"> <label for="2property4">Land Plot (100)</label></li>
                        <li><input type="checkbox" id="2property6" onclick="active_reset()" name="propertytype[]" value="4"> <label for="2property6">Office (100)</label></li>
                        <li><input type="checkbox" id="2property7" onclick="active_reset()" name="propertytype[]" value="5"> <label for="2property7">Penthouse (100)</label></li>
                        <li><input type="checkbox" id="2property8" onclick="active_reset()" name="propertytype[]" value="6"> <label for="2property8">Retails Space (100)</label></li>
                        
                        <li><input type="checkbox" id="2property9" onclick="active_reset()" name="propertytype[]" value="7"> <label for="2property9">Villa/House (100)</label></li>
                        <li><input type="checkbox" id="2property10" onclick="active_reset()" name="propertytype[]" value="8"> <label for="2property10">Townhouse (100)</label></li>
                        <li><input type="checkbox" id="2property11" onclick="active_reset()" name="propertytype[]" value="9"> <label for="2property11">Warehouse (100)</label></li>
                        <li><input type="checkbox" id="2property12" onclick="active_reset()" name="propertytype[]" value="10"> <label for="2property12">Buildings (100)</label></li>
                        
                      </ul>   
                        
                    </div>
                     
                </div>
              </li>
              
              
              <li><a >100 Real Estate Agencies</a></li>
             
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


    <!-- end of header 5 -->
      <div class="bg-wraper parallax-point-event">
	
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
		
		$(document).ready(function(){
				$(".show-number").click(function(){
					$(this).text("+123456789");
				});
				
				$(".show-fax").click(function(){
					$(this).text("+987654321");
				});
			});
		</script>
			
			<!--side bar here-->
			
		@include('layouts.sidebar_agenciesmap')	
			
  <!--end of sode bar-->

			<!-- show your result here -->
				@yield('content')


				<div class="clear10"></div>
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

@include('layouts.footer')



    <!-- END: FOOTER -->
</div>
<!-- END: MAIN-WRAPPER-->
<!-- Le javascript
    ================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 

 


</body>
</html>
	 