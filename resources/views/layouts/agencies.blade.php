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
  <script src="{{URL::asset('public/js/magicsuggest5.js')}}"></script>
  
  <script src="{{URL::asset('public/js/jquery.mCustomScrollbar.concat.min.js')}}"></script>
  <link rel="stylesheet"  href="{{URL::asset('public/src/css/lightslider.css')}}"/>
 
  <script src="{{URL::asset('public/src/js/lightslider.js')}}"></script> 
    
	
<script src="{{URL::asset('public/assets/js/jquery.js')}}" type="text/javascript"></script>
<script>
var screenname = 'agencies_map';
var main_path = '{{ url('/') }}';
$.noConflict();
</script>
	
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

      <!--side bar here-->
      
    @include('layouts.sidebar_agenciesmap')

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
            <div class="mapswitchbtns">
              <input type="radio" id="forsale" name="rentsale" checked value="0">
              <label for="forsale" onclick="active_reset();">Sale</label>
              <input type="radio" id="forrent" name="rentsale" value="1">
              <label for="forrent" onclick="active_reset();">Rent</label>
            </div>
    <div id="map_load">

    <!--contents here-->
    <!--your contents here-->
      @yield('content')
        
    </div>
  
      
</section><!--/ TOP SECTION-->




  <!-- /FEATURE section-->
  
  
<!-- /TEAM SECTION-->     




  

<!-- ###################### FOOTER #######################
    ================================================== -->
@include('layouts.footer')

<!-- END: FOOTER -->
</div>
</body>
</html> 