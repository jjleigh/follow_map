var Map = {};

Map.latitude = 43.64225662;
Map.longitude = -79.3870568;

function intializeMap() {
	Map.options = {
		zoom: 14,
		center: new google.maps.LatLng(Map.longitude, Map.latitude),
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	Map.canvas = new google.maps.Map($('#map-canvas')[0], Map.options);
}

$(document).on('ready page:load', function() {

	if ($("#map-canvas").length) intializeMap();
});