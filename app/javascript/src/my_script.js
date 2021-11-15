// https://developer.mozilla.org/en-US/docs/Web/API/Window/load_event
// The load event is fired when the whole page has loaded,
// including all dependent resources such as stylesheets and images.
window.addEventListener("load", () => {

});


// A page can't be manipulated safely until the document is "ready."
// jQuery detects this state of readiness for you.
// Code included inside this function will only run once the
// page Document Object Model (DOM) is ready for JavaScript
// code to execute.
$(document).ready(function() {
  $('#myTable').DataTable();
});
