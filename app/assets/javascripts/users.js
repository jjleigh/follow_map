var Map = {};
Map.nearby_marker_img = 'http://maps.google.com/mapfiles/ms/icons/yellow-dot.png'


function intializeMap() {
	Map.options = {
		zoom: 14,
		center: new google.maps.LatLng(Map.longitude, Map.latitude),
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};

	Map.canvas = new google.maps.Map($('#map-canvas')[0], Map.options);
	if (Map.showMarkers) {
		var myMarker = new google.maps.Marker ({
			position: new google.maps.LatLng(Map.longitude, Map.latitude),
			map: Map.canvas
		});
	}
}

function addMarkers(coords) {
	coords.forEach(function (coord) {
		var myMarker = new google.maps.Marker ({
			position: new google.maps.LatLng(coord.longitude, coord.latitude),
			map: Map.canvas,
			icon: Map.nearby_marker_img
		});
	});

}

$(document).on('ready page:load', function() {

	if ($("#map-canvas").length) {
		intializeMap();
		if (Map.coords.length > 0) addMarkers(Map.coords);
	}

});









