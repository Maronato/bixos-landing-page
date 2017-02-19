/* global google */
(function () {
	'use strict';

	var $routeOrigin = document.querySelector('#route-origin'),
		$routeDest   = document.querySelector('#route-dest'),
		$mapCanvas   = document.querySelector('#map-canvas'),
		$routeMethod   = document.querySelector('#route-method');

	var map,
		directionsDisplay,
		directionsService = new google.maps.DirectionsService();

	function createMap() {
		var mapOptions = {
			zoom: 16,
			scrollwheel: false,

			// Unicamp
			center: new google.maps.LatLng(-22.8159666, -47.070069),
		};

		map = new google.maps.Map($mapCanvas, mapOptions);

		directionsDisplay = new google.maps.DirectionsRenderer();
		directionsDisplay.setMap(map);

		calculateRoute();
	}

	function calculateRoute() {
		var origin = $routeOrigin.value.split(','),
			dest   = $routeDest.value.split(','),
			method = $routeMethod.value;

		if (method == 'walking'){
			method = google.maps.TravelMode.WALKING;
		}
		else if (method == 'driving'){
			method = google.maps.TravelMode.DRIVING;
		}
		else if (method == 'transit'){
			method = google.maps.TravelMode.TRANSIT;
		}
		else {
			method = google.maps.TravelMode.BICYCLING;
		}

		var request = {
			origin: new google.maps.LatLng(parseFloat(origin[0], 10), parseFloat(origin[1], 10)),
			destination: new google.maps.LatLng(parseFloat(dest[0], 10), parseFloat(dest[1], 10)),
			travelMode: method,
		};

		directionsService.route(request, function (response, status) {
			if (status == google.maps.DirectionsStatus.OK) {
				directionsDisplay.setDirections(response);
			}
		});
	}

	google.maps.event.addDomListener(window, 'load', createMap);

	$routeOrigin.addEventListener('change', calculateRoute);
	$routeDest.addEventListener('change', calculateRoute);
	$routeMethod.addEventListener('change', calculateRoute);
})();
