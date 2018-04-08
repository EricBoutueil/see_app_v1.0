// function definitions

var totalVolumeMax = 0;
var map;
var bounds = new google.maps.LatLngBounds();
var mapElement = document.getElementById('map');
var jsonparsed = JSON.parse(mapElement.dataset.geojson);


function initMap() {
  if (mapElement) {
    // STEP 1: init map
    map = new google.maps.Map(mapElement, {
          zoom: 6,
          center: {lat:46.52863469527167, lng:2.43896484375}
          // FR: {lat:46.52863469527167, lng:2.43896484375} // MRS: {lat: 43.3, lng: 5.4}
        });

    // auto center map on markers
    google.maps.event.addListener(map.data, 'addfeature', function(e) {
        if (e.feature.getGeometry().getType() === 'Point') {
          bounds.extend(e.feature.getGeometry().get());
        }
        map.fitBounds(bounds);
      });

    // STEP 2: load GeoJson
    map.data.addGeoJson(jsonparsed);

    // check max totvol
    map.data.forEach(function(feature) {
        if (feature.getProperty('totvol') > totalVolumeMax) {
          totalVolumeMax = feature.getProperty('totvol');
        };
    });
    // console.log(totalVolumeMax)

    // STEP 3: set style
    map.data.setStyle(function(feature) {
      var totalVolume = feature.getProperty('totvol');
      return {
        icon: getCircle(totalVolume)
      };
    });

  };
  // else { console.log("there is no mapElement")};
}

// note: markers ares symbols (circles)
function getCircle(totalVolume) {
  return {
    path: google.maps.SymbolPath.CIRCLE,
    fillColor: 'blue',
    fillOpacity: .8,
    scale: (totalVolume * 20 / totalVolumeMax),
    strokeColor: 'blue',
    strokeWeight: 1
  };
}

// google.maps.event.addDomListener(window, "load", initMap);

// execution

initMap();

// var mapElement = document.getElementById('map');
// eventListener dataset

// export { initMap, getCircle };
