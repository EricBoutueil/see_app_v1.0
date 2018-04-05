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

// event listener for each new selected harbour
$('#select2_harbours').on("select2:select", (event) => {
// take ALL the (un)selected harbour
  let values = [];
  $(event.currentTarget).find("option:selected").each(function(i, selected){
    values[i] = $(selected).text();
  });
  console.log(values);


  // console.log(event);
  // console.log(event.params);
  // console.log(event.params.data);
  // var harbourSelected = event.params.data.text;
  // console.log(harbourSelected); // -> bayonne  -> OK

  $.get({
    url: '/harbours',
    dataType: "script",
    data: {name: values}//harbourSelected}
  });
});

// event listener for each new UNselected harbour
$('#select2_harbours').on("select2:unselect", (event) => {
// take ALL the (un)selected harbour
  let values = [];
  $(event.currentTarget).find("option:selected").each(function(i, selected){
    values[i] = $(selected).text();
  });
  console.log(values);


  // console.log(event);
  // console.log(event.params);
  // console.log(event.params.data);
  // var harbourSelected = event.params.data.text;
  // console.log(harbourSelected); // -> bayonne  -> OK

  $.get({
    url: '/harbours',
    dataType: "script",
    data: {name: values}//harbourSelected}
  });
});
