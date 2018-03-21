// app/javascript/packs/map.js
import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  // STEP 1
  const map = new GMaps({ el: '#map', lat: 43.3, lng: 5.4, zoom: 6 });
  // STEP 2
  map.data.loadGeoJson('JSON.parse(mapElement.dataset.GeoJSON)');
  // const markers = JSON.parse(mapElement.dataset.markers);

  // STEP 3
  map.data.setStyle(function(feature) {

  // STEP 4
  map.data.addListener('click', function(event) {
}

// other STEP2 bis TBC
  // map.addMarkers(markers);
  // if (markers.length === 0) {
  //   map.setZoom(2);
  // } else if (markers.length === 1) {
  //   map.setCenter(markers[0].lat, markers[0].lng);
  //   map.setZoom(14);
  // } else {
  //   map.fitLatLngBounds(markers);
  // }

