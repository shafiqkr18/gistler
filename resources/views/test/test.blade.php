
 @if (count($propertiesList) > 0)
			@foreach ($propertiesList as $listing)


				
id: {{ $listing->id }} <br>
name: {{ $listing->name }}<br>
image: {{ $listing->image }}<br>






					@endforeach
			@endif