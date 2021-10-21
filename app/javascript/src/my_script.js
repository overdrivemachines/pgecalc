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
