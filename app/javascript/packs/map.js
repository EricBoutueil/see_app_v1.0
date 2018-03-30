// function definitions

function initMap() {
  var map;
  // look for the correct element 'map' in the DOM, so need DOM charged
  var mapElement = document.getElementById('map');

  if (mapElement) {
    // STEP 1: init map
    map = new google.maps.Map(mapElement, {
          zoom: 6,
          center: {lat: 43.3, lng: 5.4}
        });

    // STEP 2: load GeoJson
    map.data.loadGeoJson('/api/v1/harbours/');

    // STEP 3: set style
    map.data.setStyle(function(feature) {
      var totalvolume = feature.getProperty('totvol');
      return {
        icon: getCircle(totalvolume)
      };
    });

  };
  // else { console.log("there is no mapElement")};
}

function getCircle(totalvolume) {
  return {
    path: google.maps.SymbolPath.CIRCLE,
    fillColor: 'blue',
    fillOpacity: .8,
    scale: 10, // = MAX_TOTALVOLUME --> calc < 20 ? -> each totalvolume range between max harbour 8e7 -> 4e6 // 5e06 -> 3e5 // 100 -> need max
    strokeColor: 'blue',
    strokeWeight: 1
  };
}


// execution

initMap();

export { initMap, getCircle };
