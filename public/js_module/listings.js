//listings.js

$(document).ready(function () {




if(screenname == 'listings')//if this is map page
{
	// load map page

	loadListingsData();
	

}




});


function loadListingsData()
{
	$.ajax({
		method: 'POST',
		type : 'POST',
		url  : main_path+'/properties/getListingsData',
		beforeSend: function(){
		$(".se-pre-con").fadeIn("slow");
		},
		data: {'_token': $('meta[name=_token]').attr('content'),'type':1},
		success :  function(data)
		{
			$("#map_load").fadeIn(1000).show(function()
				{
					//map data

				$('#map_hs').html('');
				$("#map_hs").html(data['map_data']);

				//console.log(data['map_data']);

				//list data
				$('.list_overmap').empty();
				$('.list_overmap').html(data['list_data']);
				 $.mCustomScrollbar.defaults.scrollButtons.enable=true; //enable scrolling buttons by default
        		$.mCustomScrollbar.defaults.axis="yx"; //enable 2 axis scrollbars by default
        		$("#content-l").mCustomScrollbar();
				$("#content-l").mCustomScrollbar("update");
				});
				$(".se-pre-con").fadeOut("slow");
		}

								  
	});
						
					
}

