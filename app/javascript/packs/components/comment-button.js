if (location.hash && location.search != "?no-open=true") {
  document.querySelector(location.hash + " .card-expand").click()
}