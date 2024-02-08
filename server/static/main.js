// https://github.com/lukasmartinelli/mapbox-gl-inspect

// const styleURL = `${window.location.protocol}//${window.location.host}/style.vv.json`;
const styleURL = `${window.location.protocol}//${window.location.host}/style.json`;

fetch("/metadata")
	.then((response) => response.json())
	.then(render);

function render(data) {

	var bounds = data["bounds"].split(",");

	var map = new mapboxgl.Map({
		container: "map",
		style: styleURL,
		center: [
			(Number(bounds[0]) + Number(bounds[2])) / 2,
			(Number(bounds[1]) + Number(bounds[3])) / 2,
		], // starting position [lng, lat]
		zoom: 13,
	});

	// -- Comment the following lines out to remove debug UI --
	map.showTileBoundaries = true;

	map.addControl(
		new MapboxInspect({
			showInspectButton: false,
			showMapPopup: true,

			// renderPopup(features) {

			// 	return '<h1>' + features.length + '</h1>';
			// },
		})
	);
}