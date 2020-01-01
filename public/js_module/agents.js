//agents.js

$(document).ready(function () {




if(screenname == 'agents_map')//if this is map page
{
	// load map and list on map page

	loadAgentsData();
}

if(screenname == 'agents_grid')//if this is list page
{
	// load map and list on map page

	loadAgentsData_List();
}


});


function loadAgentsData()
{
	$.ajax({
		method: 'POST',
		type : 'POST',
		url  : main_path+'/agents/getData_Map',
		beforeSend: function(){
		$(".se-pre-con").fadeIn("slow");
		},
		data: {'_token': $('meta[name=_token]').attr('content')},
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
					
				});
				$(".se-pre-con").fadeOut("slow");
		}
								  
	});
						
						
}

function loadAgentsData_List()
{
	$.ajax({
		method: 'POST',
		type : 'POST',
		url  : main_path+'/agents/getData_List',
		beforeSend: function(){
		$(".se-pre-con").fadeIn("slow");
		},
		data: {'_token': $('meta[name=_token]').attr('content')},
		success :  function(data)
		{
			$(".row-fluid").fadeIn(1000).show(function()
				{
				

				//list data
				$('.result_hs').empty();
				$('.result_hs').html(data['list_data']);
					
				});
				$(".se-pre-con").fadeOut("slow");
		}
								  
	});
						
						
}