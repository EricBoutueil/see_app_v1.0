// app/javascript/packs/map.js
import GMaps from 'gmaps/gmaps.js';

// function initMap() { // not working with it
  const mapElement = document.getElementById('map');
  if (mapElement) {
    // STEP 1
    const map = new GMaps({ el: '#map', lat: 43.3, lng: 5.4, zoom: 6 });
    // STEP 2
    var jsonparsed = JSON.parse(mapElement.dataset.geojson)
    map.data.addGeoJson(jsonparsed);

  console.log(map)
  console.log(jsonparsed)
  }
  else { console.log("jenesuispasdanslaboucle")}
// }


// NOTES:

  // if (mapElement) { // don't try to build a map if there's no div#map to inject in

    // STEP 2 before
    // const markers = JSON.parse(mapElement.dataset.markers);

    // STEP 3
    // map.data.setStyle(function(feature) {

    // STEP 4
    // map.data.addListener('click', function(event) {


// var jsondata = JSON.parse(mapElement.dataset.geojson)
// map.data.loadGeoJson('jsondata');

// console.log(document.getElementById('map').dataset.geojson)
// {"type":"FeatureCollection","features":[{"type":"Feature","properties":{},"geometry":{"type":"Point","coordinates":[8.738635,41.919229]}},{"type":"Feature","properties":{},"geometry":{"type":"Point","coordinates":[9.450881,42.697283]}},{"type":"Feature","properties":{},"geometry":{"type":"Point","coordinates":[-1.474841,43.492949]}}]}

// addGeoJson(geoJson:Object, options?:Data.GeoJsonOptions)
// Return Value:  Array<Data.Feature>
// Adds GeoJSON features to the collection. Give this method a parsed JSON.
// The imported features are returned.
// Throws an exception if the GeoJSON could not be imported.


// toGeoJson(callback:function(Object))
// Return Value:  None
// Exports the feature to a GeoJSON object.


// not needed anymore?
  // map.addMarkers(markers);
  // if (markers.length === 0) {
  //   map.setZoom(2);
  // } else if (markers.length === 1) {
  //   map.setCenter(markers[0].lat, markers[0].lng);
  //   map.setZoom(14);
  // } else {
  //   map.fitLatLngBounds(markers);
  // }

