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