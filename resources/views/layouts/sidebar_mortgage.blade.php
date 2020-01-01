<div class="span2 sidebar">

<script>
$(document).ready(function(){
    $("#reset_priority").click(function(){
        $("#resetfileds").load("reset_priority.php");
		myFunction();
		$("#reset_priority").removeClass("btnactive");
    });
});

		function active_reset() {
			myFunction();
			$("#form_reset").addClass("btnactive");
		}
		
		
	
</script>
				<div class="clear10"></div>
				<a  class="btn-refresh" id="form_reset">Reset Listings</a>
				<div class="clear10"></div>
				
				<form id="reg-form" name="shippingform" method="get" action="">
				<input type="hidden" id="slideremove" name="slideremove" value="">
				
				
				
				<ul class="listside">
					<li><a >Showing 500 Results</a></li>
					<li><a href="#">Checked <span id="mortcounter">0</span> to compare</a></li>
					<li><button class="btngist" id="btnGistMortgage" type="button">GIST</button></li>
				</ul>
		
<script>
	$(document).ready(function() {
	  $(window).keydown(function(event){
		if(event.keyCode == 13) {
		  event.preventDefault();
		  return false;
		}
	  });
	});

$(document).ready(function(){
    
	$("#ui-id-1").click(function() {
		myFunction();
		$("#form_reset").addClass("btnactive");
	});
	
	
	/*
	$("#ms1").click(function() {
		myFunction();
		$("#form_reset").addClass("btnactive");
	});
	*/
	
	
		$('#minsalary').keyup(function() {
			var numbers = $(this).val();
			$(this).val(numbers.replace(/\D/, ''));
		});
	
	
  });
  </script>
				
				<ul class="listside list-bottom list-mortgage">
					<li><a href="#">Filters <img src="{{URL::asset('public/images/arrow-green.png')}}"></a>
						<ul>
							<div class="fixedscroll">
								<li><input type="checkbox" name="emirate[]" id="emirate1" onclick="active_reset()" value="1" class="sidefilter"><label for="emirate1">Loans for expats</label></li>
								<li><input type="checkbox" name="emirate[]" id="emirate2" onclick="active_reset()" value="2" class="sidefilter"><label for="emirate2">Islamic</label></li>
								<li><input type="checkbox" name="emirate[]" id="emirate3" onclick="active_reset()" value="3" class="sidefilter"><label for="emirate3">No Arrangement Fee</label></li>
								<li><input type="checkbox" name="emirate[]" id="emirate4" onclick="active_reset()" value="4" class="sidefilter"><label for="emirate4">No Early Settlement Fee</label></li>
								<li><input type="checkbox" name="emirate[]" id="emirate5" onclick="active_reset()" value="5" class="sidefilter"><label for="emirate5">No Salary Transfer</label></li>
							</div>
						</ul>
					</li>
					
					<li><a href="#">PROVIDER</a></li>
					<li><a href="#">MINIMUM SALARY <img src="{{URL::asset('public/images/rightarrow.png')}}"></a>
						<ul class="salarytxt">
							<div class="fixedscroll salarydv">
								<li><input type="text" name="minsalary" id="minsalary" onchange="active_reset()" placeholder="AED 15,000"/></li>
							</div>
						</ul>
					</li>
				
					
					
					
					
					<li><a href="#">DOWN PAYMENT</a></li>
					<li><a href="#">MONTHLY PAYMENT</a></li>
					<li><a href="#">RATE % <img src="{{URL::asset('public/images/arrow-green.png')}}"></a>
						<ul class="ratelist">
							<div class="fixedscroll rateslists">
								<li><input type="checkbox" name="agencies[]" onclick="active_reset()" id="estate1" class="sidefilter"><label for="estate1">FIXED</label></li>
								<li><input type="checkbox" name="agencies[]" onclick="active_reset()" id="estate2" class="sidefilter"><label for="estate2">FLEXIBLE</label></li>
							</div>
						</ul>
					</li>
				</ul>
				<input type="submit" id="formsubmitbtn" name="submit" value="Submit" style="display:none;">
				</form>
				
			</div>