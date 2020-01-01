<ul style="margin:0px;">
			
				
				
			@if (count($agentsList) > 0)
			@foreach ($agentsList as $listing)
				
				<li>
				<div class="sliderdv bgshade2">
					<div class="slidertopdv">
						<span class="leftcontent">
							<input type="checkbox" name="test" value="{{ $listing->id }}" id="selectbox11" onclick="get_select(1);" class="checkboxslid"><label for="selectbox11">&nbsp;</label>
						</span>
						<span class="rightcontent">
							<a href="#" onclick="getslideid(1);" class="closelist"><img src="{{URL::asset('public/images/icon-cross.png')}}"></a>
						</span>
						<div class="clear"></div>
					</div>
					<div class="proerptysmall">
						<div class="propertysmleft agents">
							<a href="agent_detail.php"><img src="{{URL::asset('public/images/agent.png')}}"></a>
						</div>
						<div class="propertysmright">
							<h5><a href="agent_detail.php">{{ $listing->first_name }}</a></h5>
							<p>Bay Central | Dubai Marina</p>
							<p>Dubai | UAE</p>
							
							<div class="agencyprofile">
								<span><img src="{{URL::asset('public/images/icon-green.png')}}">26 </span>
								<span><img src="{{URL::asset('public/images/icon-blue.png')}}">17 </span>
								<span><img src="{{URL::asset('public/images/icon-red.png')}}">05 </span>
								<span><img src="{{URL::asset('public/images/icon-orange.png')}}">08 </span>
							</div>
							
						</div>
						<div class="clear"></div>
					</div>
					
					
					
				</div>
				</li>

			@endforeach
			@endif


			</ul>
				<div class="cleardv"></div>