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

<link rel="shortcut icon" href="{{URL::asset('public/assets/ico/favicon.ico')}}">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<link href="{{URL::asset('public/css/magicsuggest3.css')}}" rel="stylesheet">
<script src="{{URL::asset('public/js/magicsuggest6.js')}}"></script>
  
<script type="text/javascript" src="{{URL::asset('public/source/jquery.fancybox.js?v=2.1.5')}}"></script>
<link rel="stylesheet" type="text/css" href="{{URL::asset('public/source/jquery.fancybox.css?v=2.1.5')}}" media="screen" /> 

<script type="text/javascript">
    $(document).ready(function() {
      /*
       *  Simple image gallery. Uses default settings
       */

      $('.fancybox').fancybox();

      /*
       *  Different effects
       */

      // Change title type, overlay closing speed
      $(".fancybox-effects-a").fancybox({
        helpers: {
          title : {
            type : 'outside'
          },
          overlay : {
            speedOut : 0
          }
        }
      });

      // Disable opening and closing animations, change title type
      $(".fancybox-effects-b").fancybox({
        openEffect  : 'none',
        closeEffect : 'none',

        helpers : {
          title : {
            type : 'over'
          }
        }
      });

      

    });
</script>
  
<script src="{{URL::asset('public/js/jquery.mCustomScrollbar.concat.min.js')}}"></script>
<link rel="stylesheet"  href="{{URL::asset('public/src/css/lightslider.css')}}"/>
 
<script src="{{URL::asset('public/src/js/lightslider.js')}}"></script>
<script src="{{URL::asset('public/assets/js/jquery.js')}}" type="text/javascript"></script>
<script>
var screenname = 'listings';
var main_path = '{{ url('/') }}';
var image_path = 'http://localhost/gistlercrm/uploads/listings/';
$.noConflict();
</script>
  
<script src="{{URL::asset('public/assets/js/jquery.prettyPhoto.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.localscroll-1.2.7-min.js')}}"></script>
<script type="text/javascript" src="{{URL::asset('public/assets/js/jquery.scrollTo-1.4.2-min.js')}}"></script>

<script src="{{URL::asset('public/assets/js/custom.js')}}" type="text/javascript"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/infobox/src/infobox.js"></script>

  
</head>


<body data-spy="scroll" data-target=".scroller-spy" data-twttr-rendered="true">

<!--START MAIN-WRAPPER--> 
<div style="
    margin-left: auto;
    margin-right: auto;
    max-width: 100%;
    min-height: 100%;
    min-width: 100%;
    width: 100%;
    overflow:hidden;">
<!--START MAIN-WRAPPER--> 

<!-- TOP SECTION-->
<section class="headertop needhead mapdiv" id="header-section">

 <!-- ################-->
 <!-- START TOP MENU -->
 <!-- ################-->
 

 <!-- header 2 included here..header starts -->
<script> $(window).bind("load", function() { $(".se-pre-con2").fadeOut("slow"); }); </script>
<div class="se-pre-con2"></div>
<nav class="nav-top headerstyle2">
    <div class="navbar navbar-fixed-top" id="topnavbar"> 
      <!-- navbar-fixed-top -->
        @include('layouts.navbar')

  <script>
 
    
    function myFunction(){      
      //document.getElementById("formsubmitbtn").click(); // Click on the checkbox
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
              <script language="JavaScript">
              function clicksales(){
                if ($('#filter1').is(':checked') == true) {
                  document.getElementById("filter2").checked = true;
                  document.getElementById("filter3").checked = true;
                  document.getElementById("filter4").checked = true;
                }
                else {
                  document.getElementById("filter2").checked = false;
                  document.getElementById("filter3").checked = false;
                  document.getElementById("filter4").checked = false;
                }
                
                myFunction();
                $("#form_reset").addClass("btnactive");
              }
              
              function clickforsales(){
                
                if ($('#filter5').is(':checked') == true) {
                document.getElementById("filter6").checked = true;
                document.getElementById("filter7").checked = true;
                document.getElementById("filter8").checked = true;
                }
                else {
                document.getElementById("filter6").checked = false;
                document.getElementById("filter7").checked = false;
                document.getElementById("filter8").checked = false;
                }
                
                
                myFunction();
                $("#form_reset").addClass("btnactive");
              }
              
              function hotlisting(){
                
                if ($('#filter9').is(':checked') == true) {
                document.getElementById("filter10").checked = true;
                document.getElementById("filter11").checked = true;
                }
                else {
                document.getElementById("filter10").checked = false;
                document.getElementById("filter11").checked = false;
                }
                
                
                myFunction();
                $("#form_reset").addClass("btnactive");
              }
              
              
              function recentlysold(){
                
                if ($('#filter12').is(':checked') == true) {
                document.getElementById("filter13").checked = true;
                document.getElementById("filter14").checked = true;
                document.getElementById("filter15").checked = true;
                document.getElementById("filter16").checked = true;
                }
                else {
                document.getElementById("filter13").checked = false;
                document.getElementById("filter14").checked = false;
                document.getElementById("filter15").checked = false;
                document.getElementById("filter16").checked = false;
                }
                
                
                myFunction();
                $("#form_reset").addClass("btnactive");
              }
              </script>
              <li class="">
                <input type="hidden" name="ptype" id="ptype" value="">
                
              <a href="#" class="drop"> <i class="tooltips-top" ><img src="{{URL::asset('public/images/icon-green.png')}}" height="20" onclick="changpointers(1);"><span><p>Recently Sold</p></span></i>
                  <i class="tooltips-top" ><img src="{{URL::asset('public/images/icon-blue.png')}}" height="20" onclick="changpointers(2);"><span><p>Recently Sold</p></span></i>
                  <i class="tooltips-top" ><img src="{{URL::asset('public/images/icon-red.png')}}" height="20" onclick="changpointers(3);"><span><p>Recently Sold</p></span></i>
                  <i class="tooltips-top" ><img src="{{URL::asset('public/images/icon-orange.png')}}" height="20" onclick="changpointers(4);"><span><p>Recently Sold</p></span></i> &nbsp; 
                  Listing Type &nbsp; </a>
                <div class="dropdown_2columns align_right">
                 
                    <div class="col_2">
                      <p><input type="checkbox" id="filter1" onclick="clicksales()" name="forsale"> <label for="filter1">For Sale (8000)</label></p>
                      <ul class="simple checkmenu">
                        <li><input type="checkbox" id="filter2" name="forsale[]" onclick="active_reset()"> <label for="filter2">By Agent (7986)</label></li>
                        <li><input type="checkbox" id="filter3" name="forsale[]" onclick="active_reset()"> <label for="filter3">By Owner (24)</label></li>
                        <li><input type="checkbox" id="filter4" name="forsale[]" onclick="active_reset()"> <label for="filter4">By Developer (24)</label></li>
                      </ul>   
                      
                      <p><input type="checkbox" id="filter5" onclick="clickforsales()" name="forsale"> <label for="filter5">For Rent (8000)</label></p>
                      <ul class="simple checkmenu">
                        <li><input type="checkbox" id="filter6" name="forsale[]" onclick="active_reset()"> <label for="filter6">By Agent (7986)</label></li>
                        <li><input type="checkbox" id="filter7" name="forsale[]" onclick="active_reset()"> <label for="filter7">By Owner (24)</label></li>
                        <li><input type="checkbox" id="filter8" name="forsale[]" onclick="active_reset()"> <label for="filter8">By Building Management (40)</label></li>
                      </ul>   
                      <p><input type="checkbox" id="filter9" onclick="hotlisting()" name="forsale"> <label for="filter9">Hot Listing (8000)</label></p>
                      <ul class="simple checkmenu">
                        <li><input type="checkbox" id="filter10" name="forsale[]" onclick="active_reset()"> <label for="filter10">For Sale (7986)</label></li>
                        <li><input type="checkbox" id="filter11" name="forsale[]" onclick="active_reset()"> <label for="filter11">For Rent (24)</label></li>
                      </ul> 
                      
                      <p><input type="checkbox" id="filter12" onclick="recentlysold()" name="forsale"> <label for="filter12">Recently Sold (8000)</label></p>
                      <ul class="simple checkmenu">
                        <li><input type="checkbox" id="filter13" name="forsale[]" onclick="active_reset()"> <label for="filter13">One Month (7986)</label></li>
                        <li><input type="checkbox" id="filter14" name="forsale[]" onclick="active_reset()"> <label for="filter14">Three months ago (24)</label></li>
                        <li><input type="checkbox" id="filter15" name="forsale[]" onclick="active_reset()"> <label for="filter15">Siz month ago (40)</label></li>
                        <li><input type="checkbox" id="filter16" name="forsale[]" onclick="active_reset()"> <label for="filter16">One year ago (40)</label></li>
                      </ul> 
                        
                    </div>
                     
                </div>
              </li>
              <li><a href="#" class="drop">Property Type &nbsp; </a>
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
              <li><a href="#" class="drop"><span id="totalprice">Any Price</span> &nbsp; </a>
                <script>
                function myfunction2(str){
                  document.getElementById("min-price").value = str;
                  myFunction();
                  $("#form_reset").addClass("btnactive");
                }
                function myfunction3(str2){
                  document.getElementById("max-price").value = str2;
                  myFunction();
                  $("#form_reset").addClass("btnactive");
                }
                </script>
                <script>
                
                function resetpricefilter(str){
                  //alert(str);
                  document.getElementById("min-price").value = 'Min';
                  document.getElementById("max-price").value = 'Max';
                  
                  var selected = str;
                  
                  var pricearray1 = ["filterprice1", "filterprice2", "filterprice3", "filterprice4", "filterprice5", "filterprice6", "filterprice7", "filterprice8", "filterprice9", "filterprice10"];
                  var pricearray2 = ["filterprice13", "filterprice14", "filterprice15", "filterprice16", "filterprice17", "filterprice18", "filterprice19", "filterprice20", "filterprice21", "filterprice22"];
                  var valuearray1 = ["filtervalue1", "filtervalue2", "filtervalue3", "filtervalue4", "filtervalue5", "filtervalue6", "filtervalue7", "filtervalue8", "filtervalue9", "filtervalue10", "filtervalue11", "filtervalue12"];
                  var valuearray2 = ["filtervalue13", "filtervalue14", "filtervalue15", "filtervalue16", "filtervalue17", "filtervalue18", "filtervalue19", "filtervalue20", "filtervalue21", "filtervalue22", "filtervalue23", "filtervalue24"];
                  
                  var minvalue = +document.getElementById(valuearray1[str]).value;
                  document.getElementById('totalprice').innerHTML = 'Any Price';
                  
                  for (i = 0; i <= 12; i++){
                    document.getElementById(pricearray1[i]).style.cssText = 'display:block;';
                    document.getElementById(pricearray2[i]).style.cssText = 'display:block;';
                    
                  }
                  
                }
                
                function filterprices(str){
                  //alert(str);
                  
                  var selected = str;
                  
                  var pricearray1 = ["filterprice1", "filterprice2", "filterprice3", "filterprice4", "filterprice5", "filterprice6", "filterprice7", "filterprice8", "filterprice9", "filterprice10", "filterprice11", "filterprice12"];
                  var pricearray2 = ["filterprice13", "filterprice14", "filterprice15", "filterprice16", "filterprice17", "filterprice18", "filterprice19", "filterprice20", "filterprice21", "filterprice22", "filterprice23", "filterprice24"];
                  var valuearray1 = ["filtervalue1", "filtervalue2", "filtervalue3", "filtervalue4", "filtervalue5", "filtervalue6", "filtervalue7", "filtervalue8", "filtervalue9", "filtervalue10", "filtervalue11", "filtervalue12"];
                  var valuearray2 = ["filtervalue13", "filtervalue14", "filtervalue15", "filtervalue16", "filtervalue17", "filtervalue18", "filtervalue19", "filtervalue20", "filtervalue21", "filtervalue22", "filtervalue23", "filtervalue24"];
                  
                  var minvalue = +document.getElementById(valuearray1[str]).value;
                  
                  var min_value = minvalue / 1000;
                  if(document.getElementById('max-price').value == 'Max'){
                    var max_value = 500000 / 1000;
                  }
                  else{
                    var max_value = document.getElementById('max-price').value / 1000;
                  }
                  
                  document.getElementById('totalprice').innerHTML = min_value+"K - "+ max_value +"K";
                  
                  for (i = 0; i <= 12; i++){
                    //totalprice
                    if(+document.getElementById(valuearray2[i]).value < minvalue){
                      document.getElementById(pricearray2[i]).style.cssText = 'display:none;';
                    }
                    else{
                      document.getElementById(pricearray2[i]).style.cssText = 'display:block;';
                    }
                  }
                }
                
                function filterprices2(str){
                  //alert(str);
                  
                  var selected = str;
                  
                  var pricearray1 = ["filterprice1", "filterprice2", "filterprice3", "filterprice4", "filterprice5", "filterprice6", "filterprice7", "filterprice8", "filterprice9", "filterprice10", "filterprice11", "filterprice12"];
                  var pricearray2 = ["filterprice13", "filterprice14", "filterprice15", "filterprice16", "filterprice17", "filterprice18", "filterprice19", "filterprice20", "filterprice21", "filterprice22", "filterprice23", "filterprice24"];
                  var valuearray1 = ["filtervalue1", "filtervalue2", "filtervalue3", "filtervalue4", "filtervalue5", "filtervalue6", "filtervalue7", "filtervalue8", "filtervalue9", "filtervalue10", "filtervalue11", "filtervalue12"];
                  var valuearray2 = ["filtervalue13", "filtervalue14", "filtervalue15", "filtervalue16", "filtervalue17", "filtervalue18", "filtervalue19", "filtervalue20", "filtervalue21", "filtervalue22", "filtervalue23", "filtervalue24"];
                  
                  var maxvalue = +document.getElementById(valuearray2[str]).value;
                  
                  var minvalue = document.getElementById('min-price').value;
                  
                  if(minvalue == 'Min'){
                    minvalue = 0;
                  }
                  
                  var min_value = minvalue / 1000;
                  var max_value = maxvalue / 1000;
                  
                  document.getElementById('totalprice').innerHTML = min_value+"K - "+ max_value +"K";
                  
                  for (i = 0; i <= 12; i++){ 
                    
                    if(+document.getElementById(valuearray1[i]).value > maxvalue){
                      document.getElementById(pricearray1[i]).style.cssText = 'display:none;';
                    }
                    else{
                      document.getElementById(pricearray1[i]).style.cssText = 'display:block;';
                    }
                  }
                  
                }
                </script>
                <div class="dropdown_1column align_right">
                    
                    &nbsp;  <input type="text" disabled class="pricerange" name="min-price" id="min-price" value="Min"> --- <input type="text" disabled class="pricerange" name="max-price" id="max-price" value="Max">
                    <div class="clear10"></div>
                    
                    <div id="priceselect">
                      <div class="col_4">
                        
                        <ul class="simple ">
                          <li><a onclick="myfunction2(0); filterprices(0)" id="filterprice1"><input type="hidden" value="0" id="filtervalue1">0</a></li>
                          <li><a onclick="myfunction2(50000); filterprices(1) " id="filterprice2"><input type="hidden" value="50000" id="filtervalue2">50,000+</a></li>
                          <li><a onclick="myfunction2(75000); filterprices(2)" id="filterprice3"><input type="hidden" value="75000" id="filtervalue3">75,000+</a></li>
                          <li><a onclick="myfunction2(100000); filterprices(3)" id="filterprice4"><input type="hidden" value="100000" id="filtervalue4">100,000+</a></li>
                          <li><a onclick="myfunction2(150000); filterprices(4)" id="filterprice5"><input type="hidden" value="150000" id="filtervalue5">150,000+</a></li>
                          <li><a onclick="myfunction2(200000); filterprices(5)" id="filterprice6"><input type="hidden" value="200000" id="filtervalue6">200,000+</a></li>
                          <li><a onclick="myfunction2(250000); filterprices(6)" id="filterprice7"><input type="hidden" value="250000" id="filtervalue7">250,000+</a></li>
                          <li><a onclick="myfunction2(300000); filterprices(7)" id="filterprice8"><input type="hidden" value="300000" id="filtervalue8">300,000+</a></li>
                          <li><a onclick="myfunction2(400000); filterprices(8)" id="filterprice9"><input type="hidden" value="400000" id="filtervalue9">400,000+</a></li>
                          <li><a onclick="myfunction2(500000); filterprices(9)" id="filterprice10"><input type="hidden" value="500000" id="filtervalue10">500,000+</a></li>
                        </ul>   
                          
                      </div>
                      
                      <div class="col_4">
                        
                        <ul class="simple ">
                          <li><a onclick="myfunction3(0); filterprices2(0)" id="filterprice13"><input type="hidden" value="0" id="filtervalue13">0</a></li>
                          <li><a onclick="myfunction3(50000); filterprices2(1)" id="filterprice14"><input type="hidden" value="50000" id="filtervalue14">50,000+</a></li>
                          <li><a onclick="myfunction3(75000); filterprices2(2)" id="filterprice15"><input type="hidden" value="75000" id="filtervalue15">75,000+</a></li>
                          <li><a onclick="myfunction3(100000); filterprices2(3)" id="filterprice16"><input type="hidden" value="100000" id="filtervalue16">100,000+</a></li>
                          <li><a onclick="myfunction3(150000); filterprices2(4)" id="filterprice17"><input type="hidden" value="150000" id="filtervalue17">150,000+</a></li>
                          <li><a onclick="myfunction3(200000); filterprices2(5)" id="filterprice18"><input type="hidden" value="200000" id="filtervalue18">200,000+</a></li>
                          <li><a onclick="myfunction3(250000); filterprices2(6)" id="filterprice19"><input type="hidden" value="250000" id="filtervalue19">250,000+</a></li>
                          <li><a onclick="myfunction3(300000); filterprices2(7)" id="filterprice20"><input type="hidden" value="300000" id="filtervalue20">300,000+</a></li>
                          <li><a onclick="myfunction3(400000); filterprices2(8)" id="filterprice21"><input type="hidden" value="400000" id="filtervalue21">400,000+</a></li>
                          <li><a onclick="myfunction3(500000); filterprices2(9)" id="filterprice22"><input type="hidden" value="500000" id="filtervalue22">500,000+</a></li>
                        </ul>   
                          
                      </div>
                      <div class="clear"></div>
                      <div class="bottomborder"></div>
                      <p class="txtcenter affordshift" onclick="showcalculator();">How much can i afford?</p>
                      <div class="bottomborder"></div>
                       <input type="button" value="Reset" onclick="resetpricefilter(1);" class="btnreset">
                      <input type="hidden" id="totoalestimate" value="330601" name="test" class="txtafforc">
                    </div> 
                    <div id="pricecalculator">
                      <div class="clear10"></div>
                      <p>Monthly Income</p>
                      <input type="text" class="calctxt" onchange="pricecalculatro();" name="annincome" id="annincome" value="75000">
                      
                      <p>Down payment</p>
                      <input type="text" class="calctxt" name="downpayment" onchange="pricecalculatro();" id="downpayment" value="20000">
                      
                      <p>Monthly debts</p>
                      <input type="text" class="calctxt" name="monthlydebts" onchange="pricecalculatro();" id="monthlydebts" value="250">
                      
                      <h4>YOUR MAX HOUSE PRICE:</h4>
                      <h5 id="totolamount">$330601</h5>
                      <div class="clear10"></div>
                      
                      <input type="button" value="Submit" onclick="resetfilter();" class="btn-calculator"> <input type="reset" onclick="resetprice();" class="btn-cancel" value="Cancel">
                    </div>
                </div>
              </li>
              <script>
              function resetprice(){
                document.getElementById('totolamount').innerHTML = '$330601';
                document.getElementById('totoalestimate').value = '330601';
                document.getElementById('priceselect').style.display = 'block';
                document.getElementById('pricecalculator').style.display = 'none';
              }
              
              function resetfilter(){
                myFunction();
                $("#form_reset").addClass("btnactive");
              }
              
              function pricecalculatro(){
                
                var annincome = document.getElementById('annincome').value;
                var downpayment = document.getElementById('downpayment').value;
                var monthlydebts = document.getElementById('monthlydebts').value;
                
                var estimaeprice = (annincome - downpayment) * monthlydebts;
                //alert(estimaeprice);
                document.getElementById('totolamount').innerHTML = '$' + estimaeprice; 
                document.getElementById('totoalestimate').value = estimaeprice;
              }
              
              
              function showcalculator(){
                document.getElementById('priceselect').style.display = 'none';
                document.getElementById('pricecalculator').style.display = 'block';
              }
              </script>
              
              
              
              
              
              <script>
              
          function resetbedfilter(str){
            var str = Number(str);
            
              var bedstotal = ["filterbeds1", "filterbeds2", "filterbeds3", "filterbeds4", "filterbeds5", "filterbeds6", "filterbeds7", "filterbeds8"];
              var bedstotal2 = ["filterbeds9", "filterbeds10", "filterbeds11", "filterbeds12", "filterbeds13", "filterbeds14", "filterbeds15", "filterbeds16"];
              
              var selected = Number(str);
              
              for (i = 0; i <= 7; i++) { 
                
                document.getElementById(bedstotal[i]).checked = false;
              
                document.getElementById(bedstotal2[i]).checked = false;
                
                document.getElementById(bedstotal2[i]).readOnly = false;
              }
              
              document.getElementById('min-bed').value = 'Min';
              document.getElementById('max-bed').value = 'Max';
              
              document.getElementById('totalbeds').innerHTML = '0+';
              
              myFunction();
              $("#form_reset").addClass("btnactive");
            
          }
              
              
          function bedselect(str){
            //alert(str);
            
            //uncheckall();
            
                var str = Number(str);
            
              var bedstotal = ["filterbeds1", "filterbeds2", "filterbeds3", "filterbeds4", "filterbeds5", "filterbeds6", "filterbeds7", "filterbeds8"];
              var bedstotal2 = ["filterbeds9", "filterbeds10", "filterbeds11", "filterbeds12", "filterbeds13", "filterbeds14", "filterbeds15", "filterbeds16"];
              
              var selected = Number(str);
              
              
              
              
              
              if (document.getElementById(bedstotal[selected]).checked == true) {
                for (i = 0; i <= 7; i++) { 
                  if(i == str){
                    document.getElementById(bedstotal[i]).checked = true;
                    document.getElementById('min-bed').value = str;
                  }
                  else{
                    document.getElementById(bedstotal[i]).checked = false;
                  }
                  
                  if(i == str){
                    document.getElementById(bedstotal2[i]).checked = true;
                    document.getElementById(bedstotal2[i]).readOnly = false;
                    document.getElementById('max-bed').value = str+1;
                  }
                  else if(i == str +1){
                    var min_value = str;
                    var max_value = str +1;
                    document.getElementById(bedstotal2[i]).checked = true;
                    document.getElementById('totalbeds').innerHTML = min_value+"-"+ max_value;
                    document.getElementById(bedstotal2[i]).readOnly = false;
                  }
                  else if(i < str){
                    document.getElementById(bedstotal2[i]).readOnly = true;
                    //$(bedstotal2[i]).css('border','0 none transparent');
                    //pointer-events: none
                    
                  }
                  else{
                    document.getElementById(bedstotal2[i]).checked = false;
                    document.getElementById(bedstotal2[i]).readOnly = false;
                  }
                }
              }
              else{
                for (i = 0; i <= 7; i++) {
                  document.getElementById(bedstotal[i]).checked = false;
                  document.getElementById(bedstotal2[i]).checked = false;
                  document.getElementById(bedstotal2[i]).readOnly = false;
                }
                document.getElementById('min-bed').value = 'Min';
                document.getElementById('max-bed').value = 'Max';
              }
              
              myFunction();
              $("#form_reset").addClass("btnactive");
            
          }
          
          function bedselect2(str){
            //alert(str);
            var str = Number(str);
            var selected = str;
            
            var bedstotal = ["filterbeds1", "filterbeds2", "filterbeds3", "filterbeds4", "filterbeds5", "filterbeds6", "filterbeds7", "filterbeds8"];
            var bedstotal2 = ["filterbeds9", "filterbeds10", "filterbeds11", "filterbeds12", "filterbeds13", "filterbeds14", "filterbeds15", "filterbeds16"];
            
            if (document.getElementById(bedstotal2[selected]).checked == true) {
              var maxnumberbed = 0;
              for (i = 0; i <= 7; i++) {
                if(i == str){
                  //document.getElementById(bedstotal2[i]).checked = true;
                  //document.getElementById('max-bed').value = str;
                  
                }
                else{
                  //document.getElementById(bedstotal2[i]).checked = false;
                }
                
                if(i == str){
                  //document.getElementById(bedstotal[i]).checked = true;
                  //document.getElementById('min-bed').value = str-1;
                }
                else if(i == str -1){
                  //document.getElementById(bedstotal[i]).checked = true;
                }
                else{
                  //document.getElementById(bedstotal[i]).checked = false;
                }
                
                var checkboxval = document.getElementById(bedstotal2[i]).value;
                
                if(document.getElementById(bedstotal2[i]).checked == true){
                  if(checkboxval > maxnumberbed){
                    maxnumberbed = checkboxval;
                  }
                }
                
              }
              var min_value = document.getElementById('min-bed').value;
              document.getElementById('totalbeds').innerHTML = min_value+"-"+ maxnumberbed;
              //alert(maxnumberbed);
            }
            else{
              var maxnumberbed = 0;
              for (i = 0; i <= 7; i++) {
                var checkboxval = document.getElementById(bedstotal2[i]).value;
                
                if(document.getElementById(bedstotal2[i]).checked == true){
                  if(checkboxval > maxnumberbed){
                    maxnumberbed = checkboxval;
                    //alert(maxnumberbed);
                  }
                }
              }
              
              var min_value = document.getElementById('min-bed').value;
              document.getElementById('totalbeds').innerHTML = min_value+"-"+ maxnumberbed;
            }
            
            /*
            
            if (document.getElementById(bedstotal2[selected]).checked == true) {
              for (i = 0; i <= 7; i++) {
                if(i == str){
                  document.getElementById(bedstotal2[i]).checked = true;
                  document.getElementById('max-bed').value = str;
                }
                else{
                  document.getElementById(bedstotal2[i]).checked = false;
                }
                
                if(i == str){
                  document.getElementById(bedstotal[i]).checked = true;
                  document.getElementById('min-bed').value = str-1;
                }
                else if(i == str -1){
                  document.getElementById(bedstotal[i]).checked = true;
                }
                else{
                  document.getElementById(bedstotal[i]).checked = false;
                }
              }
            }
            else{
              for (i = 0; i <= 7; i++) {
                document.getElementById(bedstotal[i]).checked = false;
                document.getElementById(bedstotal2[i]).checked = false;
              }
              document.getElementById('min-bed').value = 'Min';
              document.getElementById('max-bed').value = 'Max';
            }
            */
            
            
            
            if (document.getElementById(bedstotal2[selected]).readOnly == false) {
              myFunction();
              $("#form_reset").addClass("btnactive");
            }
          }
          </script>
              <li><a href="#" class="drop"><span id="totalbeds">0+</span> Beds &nbsp; </a>
                <div class="dropdown_1column align_right">
                    &nbsp; <input type="hidden" disabled id="min-bed" name="min-bed" value="Min"><input type="text" class="pricerange" disabled value="Min"> --- <input type="hidden" disabled id="max-bed" name="max-bed" value="Max"><input type="text" class="pricerange" disabled value="Max">
                    
                    <div class="clear10"></div>
                    <div class="col_4">
                      
                      <ul class="simple ">
                        <li><input type="checkbox" onclick="bedselect(this.value)" value="0" id="filterbeds1" class="sidefilter"> <label for="filterbeds1">0</label></li>
                        <li><input type="checkbox" onclick="bedselect(this.value)" value="1" id="filterbeds2" class="sidefilter"> <label for="filterbeds2">1</label></li>
                        <li><input type="checkbox" onclick="bedselect(this.value)" value="2" id="filterbeds3" class="sidefilter"> <label for="filterbeds3">2</label></li>
                        <li><input type="checkbox" onclick="bedselect(this.value)" value="3" id="filterbeds4" class="sidefilter"> <label for="filterbeds4">3</label></li>
                        <li><input type="checkbox" onclick="bedselect(this.value)" value="4" id="filterbeds5" class="sidefilter"> <label for="filterbeds5">4</label></li>
                        <li><input type="checkbox" onclick="bedselect(this.value)" value="5" id="filterbeds6" class="sidefilter"> <label for="filterbeds6">5</label></li>
                        <li><input type="checkbox" onclick="bedselect(this.value)" value="6" id="filterbeds7" class="sidefilter"> <label for="filterbeds7">6</label></li>
                        <li><input type="checkbox" onclick="bedselect(this.value)" value="7" id="filterbeds8" class="sidefilter"> <label for="filterbeds8">7</label></li>
                        
                      </ul>   
                        
                    </div>
                    
                    
                    <div class="col_4">
                      
                      <ul class="simple ">
                        <li><input type="checkbox" onclick="bedselect2(this.value)" value="0" id="filterbeds9" class="sidefilter"> <label for="filterbeds9">0</label></li>
                        <li><input type="checkbox" onclick="bedselect2(this.value)" value="1" id="filterbeds10" class="sidefilter"> <label for="filterbeds10">1</label></li>
                        <li><input type="checkbox" onclick="bedselect2(this.value)" value="2" id="filterbeds11" class="sidefilter"> <label for="filterbeds11">2</label></li>
                        <li><input type="checkbox" onclick="bedselect2(this.value)" value="3" id="filterbeds12" class="sidefilter"> <label for="filterbeds12">3</label></li>
                        <li><input type="checkbox" onclick="bedselect2(this.value)" value="4" id="filterbeds13" class="sidefilter"> <label for="filterbeds13">4</label></li>
                        <li><input type="checkbox" onclick="bedselect2(this.value)" value="5" id="filterbeds14" class="sidefilter"> <label for="filterbeds14">5</label></li>
                        <li><input type="checkbox" onclick="bedselect2(this.value)" value="6" id="filterbeds15" class="sidefilter"> <label for="filterbeds15">6</label></li>
                        <li><input type="checkbox" onclick="bedselect2(this.value)" value="7" id="filterbeds16" class="sidefilter"> <label for="filterbeds16">7</label></li>
                      </ul>   
                        
                    </div>
                    <div class="clear10"></div>
                    <div class="bottomborder"></div>
                    <input type="button" value="Reset" onclick="resetbedfilter(1);" class="btnreset">
                </div>
              </li>
              <script>
              
              function resetsizeselect(str){
                
                var selected = str;
                
                var sizetotal2 = ["filtersize10", "filtersize11", "filtersize12", "filtersize13", "filtersize14", "filtersize15", "filtersize16", "filtersize17", "filtersize18"];
                var sizetotal = ["filtersize1", "filtersize2", "filtersize3", "filtersize4", "filtersize5", "filtersize6", "filtersize7", "filtersize8", "filtersize9"];
                
                
                  for (i = 0; i <= 8; i++) {
                    document.getElementById(sizetotal[i]).checked = false;
                    document.getElementById(sizetotal2[i]).checked = false;
                    document.getElementById(sizetotal2[i]).readOnly = false;
                  }
                
                  document.getElementById('min-size').value = 'Min';
                  document.getElementById('max-size').value = 'Max';
                
                myFunction();
                $("#form_reset").addClass("btnactive");
              }
              
              
              function sizeselect(str){
                
                var selected = str;
                
                var sizetotal2 = ["filtersize10", "filtersize11", "filtersize12", "filtersize13", "filtersize14", "filtersize15", "filtersize16", "filtersize17", "filtersize18"];
                var sizetotal = ["filtersize1", "filtersize2", "filtersize3", "filtersize4", "filtersize5", "filtersize6", "filtersize7", "filtersize8", "filtersize9"];
                
                if (document.getElementById(sizetotal[selected]).checked == true) {
                  for (i = 0; i <= 8; i++) {
                    if(i == str){
                      document.getElementById(sizetotal[i]).checked = true;
                      document.getElementById('min-size').value = document.getElementById(sizetotal[i]).value;
                    }
                    else{
                      document.getElementById(sizetotal[i]).checked = false;
                    }
                    
                    if(i == str){
                      document.getElementById(sizetotal2[i]).checked = true;
                      document.getElementById('max-size').value = document.getElementById(sizetotal2[str+1]).value;
                      document.getElementById(sizetotal2[i]).readOnly = false;
                    }
                    else if(i == str +1){
                      document.getElementById(sizetotal2[i]).checked = true;
                      document.getElementById(sizetotal2[i]).readOnly = false;
                    }
                    else if(i < str){
                      document.getElementById(sizetotal2[i]).readOnly = true;
                      //pointer-events: none
                    }
                    else{
                      document.getElementById(sizetotal2[i]).checked = false;
                      document.getElementById(sizetotal2[i]).readOnly = false;
                    }
                  }
                }
                else{
                  for (i = 0; i <= 8; i++) {
                    document.getElementById(sizetotal[i]).checked = false;
                    document.getElementById(sizetotal2[i]).checked = false;
                    document.getElementById(sizetotal2[i]).readOnly = false;
                  }
                  document.getElementById('min-size').value = 'Min';
                  document.getElementById('max-size').value = 'Max';
                }
                
                
                myFunction();
                $("#form_reset").addClass("btnactive");
              }
              
              function sizeselect2(str){
                
                //alert(str);
                var selected = str;
                
                var sizetotal2 = ["filtersize10", "filtersize11", "filtersize12", "filtersize13", "filtersize14", "filtersize15", "filtersize16", "filtersize17", "filtersize18"];
                var sizetotal = ["filtersize1", "filtersize2", "filtersize3", "filtersize4", "filtersize5", "filtersize6", "filtersize7", "filtersize8", "filtersize9"];
                
                /*
                if (document.getElementById(sizetotal2[selected]).checked == true) {
                  for (i = 1; i <= 8; i++) {
                    if(i == str){
                      document.getElementById(sizetotal2[i]).checked = true;
                      document.getElementById('max-size').value = document.getElementById(sizetotal2[str]).value;
                    }
                    else{
                      document.getElementById(sizetotal2[i]).checked = false;
                    }
                    
                    if(i == str){
                      document.getElementById(sizetotal[i]).checked = true;
                      document.getElementById('min-size').value = document.getElementById(sizetotal[str-1]).value;
                    }
                    else if(i == str -1){
                      document.getElementById(sizetotal[i]).checked = true;
                    }
                    else{
                      document.getElementById(sizetotal[i]).checked = false;
                    }
                  }
                }
                else{
                  for (i = 1; i <= 8; i++) {
                    document.getElementById(sizetotal[i]).checked = false;
                    document.getElementById(sizetotal2[i]).checked = false;
                  }
                  document.getElementById('min-size').value = 'Min';
                  document.getElementById('max-size').value = 'Max';
                }
                */
                
                if (document.getElementById(sizetotal2[selected]).readOnly == false) {
                  myFunction();
                  $("#form_reset").addClass("btnactive");
                }
                
                
              }
              </script>
              <li><a href="#" class="drop">Size &nbsp; </a>
                <div class="dropdown_1column align_right">
                    &nbsp; <input type="hidden" disabled name="min-size" id="min-size" value="Min"><input type="text" class="pricerange" disabled value="Min"> --- <input type="hidden" disabled name="max-size" id="max-size" value="Max"><input type="text" disabled class="pricerange" value="Max">
                    
                    <div class="clear10"></div>
                    <div class="col_4">
                      
                      <ul class="simple ">
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(0)" value="0" id="filtersize1" class="sidefilter"> <label for="filtersize1">0</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(1)" value="1000" id="filtersize2" class="sidefilter"> <label for="filtersize2">1,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(2)" value="2000" id="filtersize3" class="sidefilter"> <label for="filtersize3">2,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(3)" value="3000" id="filtersize4" class="sidefilter"> <label for="filtersize4">3,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(4)" value="4000" id="filtersize5" class="sidefilter"> <label for="filtersize5">4,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(5)" value="5000" id="filtersize6" class="sidefilter"> <label for="filtersize6">5,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(6)" value="6000" id="filtersize7" class="sidefilter"> <label for="filtersize7">6,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(7)" value="7000" id="filtersize8" class="sidefilter"> <label for="filtersize8">7,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect(8)" value="8000" id="filtersize9" class="sidefilter"> <label for="filtersize9">8,000</label></li>
                      </ul>   
                        
                    </div>
                    
                    
                    <div class="col_4">
                      
                      <ul class="simple ">
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(0)" value="0" id="filtersize10" class="sidefilter"> <label for="filtersize10">0</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(1)" value="1000" id="filtersize11" class="sidefilter"> <label for="filtersize11">1,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(2)" value="2000" id="filtersize12" class="sidefilter"> <label for="filtersize12">2,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(3)" value="3000" id="filtersize13" class="sidefilter"> <label for="filtersize13">3,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(4)" value="4000" id="filtersize14" class="sidefilter"> <label for="filtersize14">4,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(5)" value="5000" id="filtersize15" class="sidefilter"> <label for="filtersize15">5,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(6)" value="6000" id="filtersize16" class="sidefilter"> <label for="filtersize16">6,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(7)" value="7000" id="filtersize17" class="sidefilter"> <label for="filtersize17">7,000</label></li>
                        <li><input type="checkbox" name="chkbox" onclick="sizeselect2(8)" value="8000" id="filtersize18" class="sidefilter"> <label for="filtersize18">8,000</label></li>
                      </ul>   
                        
                    </div>
                    <div class="clear10"></div>
                    <div class="bottomborder"></div>
                    <input type="button" value="Reset" onclick="resetsizeselect(1);" class="btnreset">
                </div>
              </li>
              
              <li><a>10 Results</a></li>
             
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

 <!-- end header 2 -->
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
  <div id="light" class="white_content propertymap" style="display:none;"> <a href = "javascript:void(0)" onclick="hidepopup();"><img src="{{URL::asset('public/images/iframecross.png')}}"></a>
    <h3>Quick Map</h3>
    <iframe src="listing_map.php" frameborder="0" allowfullscreen="" scrolling="no" class="mapiframe"></iframe>
    
    <div class="iframedvright">
      <a href="http://www.facebook.com/" target="_blank"><img src="{{URL::asset('public/images/facebook2.png')}}"></a>
      <a href="http://www.twitter.com/" target="_blank"><img src="{{URL::asset('public/images/twitter2.png')}}"></a>
      <a href="http://www.linkedin.com/" target="_blank"><img src="{{URL::asset('public/images/linkedin2.png')}}"></a>                             
      <a href="http://www.plus.google.com/" target="_blank"><img src="{{URL::asset('public/images/googleplus2.png')}}"></a>
      <a href="http://www.whatsapp.com" target="_blank"><img src="{{URL::asset('public/images/whatsapp.png')}}"></a>
      <a href="mailto:test@gmail.com" target="_blank"><img src="{{URL::asset('public/images/envelop.png')}}"></a>
      <a href="javascript:;" onclick="javascript:window.print();" ><img src="{{URL::asset('public/images/print_btn.png')}}"></a>
    </div>
  </div>
  <div id="fade" class="black_overlay" style="display:none;" onclick="hidepopup();"></div>
  
  
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

    <!-- side bar starts here -->
    @include('layouts.sidebar_listings') 
    <!-- end of side bar -->

    <!-- END HEADER headertop NAV -->
  <script>
    $(document).ready(function(){
        
       
        
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
