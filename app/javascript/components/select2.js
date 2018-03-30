import $ from 'jquery';
import 'select2';

// select2 field only
// $ = document.querySelectorAll(...) for jquery plugin, and call select2 on it
$('#select2_harbours').select2({
    placeholder: "Ecrivez ou sélectionnez pour filtrer",
    allowClear: true
});

// Requiring CSS == importing CSS! Path is relative to ./node_modules
// -> css included in js (not in asset pipeline) and available in / compiled by Webpack
import 'select2/dist/css/select2.css';


// event listener
$('#select2_harbours').on("select2:select", (event) => {
  var harbourSelected = event.params.data.text;
  console.log(harbourSelected); // --> bayonne

// call AJAX == fetch
// fetch('http://localhost:3000/api/v1/restaurants/1').then((response) => {
//   .then(response => response.json()) // lit le json pour être bien interprété par js
//   .then((data) => { // début du call back pour faire mon traitement
//       console.log(data);
//       // data.results.forEach((person) => {
//       //   const item = `<li>${person.name}</li>`;
//       //   people.insertAdjacentHTML("beforeend", item);
//       // });
//   });
// });

});
