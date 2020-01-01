// mortgage.js


//  when gist it button clicked

$( "#btnGistMortgage" ).on( "click", function() {
  

  // get all ids from check boxes

  var allVals = [];
  if($('#mortgage_main input').is(':checked')){
  	$('#mortgage_main input[type="checkbox"]:checked').each(function() {
             allVals.push($(this).val());
					
	});
	// now send request to controller
	console.log( allVals );
	                $.ajax({
						 method: 'POST',
						type : 'POST',
						url  : main_path+'/mortgage/getFilteredData',
						beforeSend: function(){
							$(".se-pre-con").fadeIn("slow");
					    },
						data: {'userdata':allVals, '_token': $('meta[name=_token]').attr('content')},
						success :  function(data)
								   {						
										
									$(".result").fadeIn(1000).show(function()
									{
										 $('.result').empty();
										$(".result").html(data['html']);
										
									});
										$(".se-pre-con").fadeOut("slow");
										
								   }
						});
						
						return false;

  }else{

  	alert('Please select any listing first!'); return false;
  }
});