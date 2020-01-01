<!-- resources/views/home/index.blade.php -->

@extends('layouts.home')

@section('content')

    <!-- HEADER MARKETING SLOGAN-->
<header class="container">
    <div class="row-fluid">
        <div class="bg-wraper">
            <div class="clear10"></div>
            <div class="clear10"></div>
            <div class="clear10"></div>
            <div class="clear10"></div>
            <div class="clear10"></div>
            <div class="hero-unit text-center">
                <!--LOGO-->
                <div class="logo">
                    <a href="/" title="GISTLER">
                        <img src="{{URL::asset('public/images/Logo.png')}}" alt="logo"/>
                    </a>
                </div>
                <!--/ LOGO-->
                
                    <div class="inner-wrap-hero">
                        
                        <div class="searchbox">
                            <div class="form-top">
                                <span>
                                    <img src="{{URL::asset('public/images/icon-home.png')}}"> REAL ESTATE
                                </span>
                                <div class="clear"></div>
                            </div>
                            <div class="form-body">
                                <div class="span6">
                                    
                                    <div class="tabs">
    
                                       <div class="tab">
                                           <input type="radio" id="tab-1" name="tab-group-1" checked>
                                           <label for="tab-1">For Sale</label>
                                           
                                           <div class="content">
                                               stuff
                                           </div> 
                                       </div>
                                        
                                       <div class="tab">
                                           <input type="radio" id="tab-2" name="tab-group-1">
                                           <label for="tab-2">For Rent</label>
                                           
                                           <div class="content">
                                               stuff2
                                           </div> 
                                       </div>
                                        
                                    </div>
                                    
                                    
                                </div>
                                






                                <div class="span6">
                                       <div class="clear"></div>
                                       
                                       <div class="selectmenu"><img src="{{URL::asset('public/images/aed.gif')}}" style="width:22px; margin-top:-3px;"> UAE</div>
                                       <div class="selectmenu selectcity">
                                            <select class="emirates">
                                                <option value="">Emirates</option>
                                                <option value="Abu Dhabi">Abu Dhabi</option>
                                                <option value="Ajman">Ajman</option>
                                                <option value="Dubai">Dubai</option>
                                                <option value="Sharjah">Sharjah</option>
                                                <option value="Umm Al Quwain">Umm Al Quwain</option>
                                                <option value="Fujairah">Fujairah</option>
                                                <option value="Ras Al Khaimah">Ras Al Khaimah</option>
                                            </select>
                                       </div>
                                       
                                       <div class="clear"></div>
                                       
                                </div>
                                
                                <div class="clear clear"></div>
                    
                                 <div class="span8 searchcommunity">
                                    
                                    <div class="formleftdv">
                                    <form>
                                        <div id="ms1" ></div>
                                        
                                        <input name="tags" id="singleFieldTags2" class="community" placeholder="City or Community or Tower" value="" style="display:none;">
                                    </form>
                                    <span id="counterselect">0</span>
                                    </div>
                                    <div class="formrightdv"><i><img src="{{URL::asset('public/images/search-gray.png')}}"></i></div>
                                  </div>
                                  <div class="span4 nomargin">
                                    <input type="button" class="btnsearch" onclick="window.location.href='map.php'" value="GIST it">
                                  </div>
                                
                                
                                <div class="clear"></div>
                                <br/><br/><br/>
                            </div>
                        </div>
                        
                    </div>
                <!--<hr class="half">-->
                
                    <span class="gobottom bottomlink arrowdownlink" id="nav2">
                        <a href="#features-section" title="">
                            <img src="{{URL::asset('public/images/icon-down-arrow.png')}}">
                        </a>
                    </span>
                
                
            
            </div>  
        </div><!-- / HERO UNIT-->
    </div><!-- / HERO WRAP-->
</header><!-- / HEADER MARKETING SLOGAN container-->
@endsection