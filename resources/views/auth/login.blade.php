<!-- resources/views/auth/login.blade.php -->
@extends('layouts.accounts')

@section('content')

<!-- HEADER MARKETING SLOGAN-->
<header class="container">
    <div class="row-fluid">
        <div class="">
            <div class="hero-unit text-center">
                <!--LOGO-->
                <div class="logo">
                    <h3>WELCOME TO</h3>
                    <a href="/" title="GISTLER">
                        <img src="{{URL::asset('public/images/Logo.png')}}" alt="logo"/>
                    </a>
                </div>
                <!--/ LOGO-->
                
                    <div class="inner-wrap-hero">
                    
                        <div class="searchbox">
                            
                            <div class="form-body">
                                <div class="span12">
                                    
                                    
                                    <div class="tabs" id="account_div">
                                        <div class="tab logintab">
                                           <input type="radio" id="tab-1" name="tab-group-1" checked="checked" value="1">
                                           <label for="tab-1" class="switchtab1">SIGN IN </label>
                                           <div class="clear"></div>
                                           <div class="content loginform">
                                                 <form  id="frmlogin"  method="POST" action="{{ url('/login') }}">
                                             
                                                  {!! csrf_field() !!}

                                                   <input type="text" id="email" name="email"  class="form-control txtform" placeholder="Enter your email " value="{{ old('email') }}">
                                                      @if ($errors->has('email'))
                                                        <span class="help-block">
                                                        <strong>{{ $errors->first('email') }}</strong>
                                                        </span>
                                                      @endif
                                                    <input type="password" id="password" name="password" class="form-control txtform" placeholder="Enter your password">
                                                        @if ($errors->has('password'))
                                                        <span class="help-block">
                                                            <strong>{{ $errors->first('password') }}</strong>
                                                        </span>
                                                        @endif
                                                                   
                                                      <div class="clear10"></div>
                                                    
                                                    <div class="halfdv rememberdv">
                                                        <input type="checkbox" id="remember" class="remember" name="remember"> <label for="remember">Remember Me</label><br/>
                                                        <a href="#">Don't know your password?</a>
                                                    </div>
                                                    
                                                    <div class="halfdv">
                                                        <input type="submit" class="btn-login" value="SIGN IN">
                                                    </div>
                                                </form>
                                                <div class="clear"></div>
                                                <div class="clear10"></div>
                                                <div class="socialdv">
                                                    <h4><img src="{{URL::asset('public/images/social-media-line.png')}}" width="100%"></h4>
                                                    <a href="redirect/facebook" target="_blank"><img src="{{URL::asset('public/images/social-facebook.png')}}"></a>
                                                    <a href="redirect/twitter" target="_blank"><img src="{{URL::asset('public/images/social-twitter.png')}}"></a>
                                                    <a href="#" target="_blank"><img src="{{URL::asset('public/images/social-linkedin.png')}}"></a>
                                                    <a href="redirect/google" target="_blank"><img src="{{URL::asset('public/images/social-googleplus.png')}}"></a>
                                                </div>
                                           </div>
                                            <div class="clear"></div>
                                       </div>
                                        
                                       <div class="tab logintab">
                                           <input type="radio" id="tab-2" name="tab-group-1" value="2">
                                           <label for="tab-2" class="switchtab2">NEW ACCOUNT</label>
                                           
                                           <div class="content loginform2">
                                               <!-- sign up form here -->
                                                <form id="form-signup"  method="POST" action="{{ url('/register') }}">
                                                {!! csrf_field() !!}
                                                   <input type="text" id="name" name="name"  class="form-control txtform2"  placeholder="Username">
                                                    
                                                    
                                                    <div class="clear"></div>
                                                    <div class="halfdv rememberdv">
                                                        <input type="email" name="email" id="email" class="form-control txtform" placeholder="Enter your email" >
                                                    </div>
                                                    
                                                    <div class="halfdv rightdv">
                                                        <input type="email" name="re-email" id="re-email" class="form-control txtform" placeholder="Re - Enter your email">
                                                    </div>
                                                    <div class="clear"></div>
                                                    <div class="halfdv rememberdv">
                                                        <input type="password" name="password" id="password" class="form-control txtform" placeholder="Enter your password">
                                                    </div>
                                                    
                                                    <div class="halfdv rightdv">
                                                        <input type="password" name="password_confirmation" id="re-password" class="form-control txtform" placeholder="Re - Enter your password">
                                                    </div>
                                                    
                                                    <div class="clear"></div>
                                                    <div class="halfdv1 rememberdv">
                                                        <input type="checkbox" class="remember" id="is_professional" name="is_professional"> <label for="remember2">I am a licensed professional</label><br/>
                                                        By clicking submit, you agree to GISTLER's <a href="#">Terms of Use</a>
                                                    </div>
                                                    <div class="halfdv2 rememberdv">
                                                        <input type="submit" class="btn-login" value="SUBMIT">
                                                    </div>
                                                   
                                                </form>
                                               
                                                <div class="clear"></div>
                                                <div class="clear10"></div>
                                                <div class="socialdv">
                                                    <h4><img src="{{URL::asset('public/images/social-media-line.png')}}" style="width:100%;"></h4>
                                                    
                                                    
                                                     <a href="redirect/facebook" target="_blank"><img src="{{URL::asset('public/images/social-facebook.png')}}"></a>
                                                    <a href="redirect/twitter" target="_blank"><img src="{{URL::asset('public/images/social-twitter.png')}}"></a>
                                                    <a href="#" target="_blank"><img src="{{URL::asset('public/images/social-linkedin.png')}}"></a>
                                                    <a href="redirect/google" target="_blank"><img src="{{URL::asset('public/images/social-googleplus.png')}}"></a>
                                                </div>
                                                <br/>
                                           </div> 
                                           <div class="clear"></div>
                                       </div>
                                        <div class="clear"></div>
                                        
                                    </div>
                                    
                                    <div class="clear10"></div>
                                    
                                    
                                    
                                </div>
                                
                                
                                <div class="clear clear10"></div>
                                
                                 
                                
                                
                                <div class="clear"></div>
                                <br/><br/><br/>
                            </div>
                        </div>
                        
                    </div>
                <!--<hr class="half">-->
            
            
            </div>  
        </div><!-- / HERO UNIT-->
    </div><!-- / HERO WRAP-->
</header>
<!-- / HEADER MARKETING SLOGAN container-->
@endsection
