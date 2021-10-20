window.addEventListener("load", () => {
  const element = document.querySelector("#collapse-property-new");
  element.addEventListener("ajax:success", (event) => {
    const [_data, _status, xhr] = event.detail;
    console.log("***SUCCESS***");
  });
  element.addEventListener("ajax:error", () => {
    // element.insertAdjacentHTML("beforeend", "<p>ERROR</p>");
    console.log("***ERROR***");
  });
});


window.onload = function() {

    alert($);
    alert(jQuery);

    if (window.jQuery) {
        // jQuery is loaded
        alert("***Yeah!***");
    } else {
        // jQuery is not loaded
        alert("****Doesn't Work****");
    }
}


if (jQuery) {
alert("jquery is loaded");
} else {
alert("Not loaded");
}
