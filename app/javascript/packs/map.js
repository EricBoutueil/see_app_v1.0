// function definitions

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


// direct execution

var map;

console.log("starting map building");
// va chercher un element dans le DOM, donc faut un DOM chargé, prendre le bon element
var mapElement = document.getElementById('map');

if (mapElement) {
  // STEP 1
  map = new google.maps.Map(mapElement, {
        zoom: 6,
        center: {lat: 43.3, lng: 5.4}
      });

  // STEP 2
  var jsonparsed = JSON.parse(mapElement.dataset.geojson);
  map.data.addGeoJson(jsonparsed);

  // STEP 3
  map.data.setStyle(function(feature) {
    var totalvolume = feature.getProperty('totvol');
    return {
      icon: getCircle(totalvolume)
    };
  });

}
else { console.log("there is no mapElement")};



// event listener sur map created ??
