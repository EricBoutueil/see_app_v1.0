import $ from 'jquery';
import 'select2';

// select2 field only
// $ = document.querySelectorAll(class = select2) for jquery plugin, and call select2 on it
$('#select2_harbours').select2({
    placeholder: "Ecrivez ou sélectionnez pour filtrer",
    allowClear: true
});

// Requiring CSS == importing CSS! Path is relative to ./node_modules
// -> css included in js (not in asset pipeline) and available in / compiled by Webpack
import 'select2/dist/css/select2.css';


// call AJAX == fetch
// Fetch(url)
