import $ from 'jquery';
import 'select2';

// import '../packs/map'

// select2 field only
// $ = document.querySelectorAll(...) for jquery plugin, and call select2 on it
$('#select2_harbours').select2({
    placeholder: "Ecrivez ou sélectionnez pour filtrer",
    allowClear: true
});
// Requiring CSS == importing CSS! Path is relative to ./node_modules
// CSS included in JS (not in asset pipeline) and available in / compiled by Webpack
import 'select2/dist/css/select2.css';

// event listener
$('#select2_harbours').on("select2:select", (event) => {
  var harbourSelected = event.params.data.text;
  console.log(harbourSelected); // -> bayonne  -> OK
  // call AJAX
  $.get({
    url: '/harbours',
    dataType: "script",
    data: {name: harbourSelected}
    // success: function(data, status){
    //         alert(data);
    //         map.data.addGeoJson(data);
            // initMap();
    // }
  });
// requete ajax doit avoir json en response, passe dans call back et y manipule cet object + 2eme function en cas d'erreur
// .done et .fail
});
