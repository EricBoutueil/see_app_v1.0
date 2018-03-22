// fichier de def d'execution (pas de déf)

var map;


// var jsonparsed;
// jsonparsed = JSON.parse(mapElement.dataset.geojson);

console.log("starting map building");
// va chercher un element dans le DOM, donc faut un DOM chargé, prendre le bon element
var mapElement = document.getElementById('map');

if (mapElement) {
  map = new google.maps.Map(mapElement, {
        zoom: 6,
        center: {lat: 43.3, lng: 5.4}
      });

  // map.data.addGeoJson(jsonparsed);

  console.log(map);
  console.log(jsonparsed);
}
else { console.log("there is no mapElement")};

// event listener sur map created ??
