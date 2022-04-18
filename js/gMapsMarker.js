var marker;
function toggleBounce() {
  if (marker.getAnimation() !== null) {
    marker.setAnimation(null);
  } else {
    marker.setAnimation(google.maps.Animation.BOUNCE);
  }
}
function initMap() {
  var koropi = { lat: 38.2861593, lng: 21.7889324 };
  var map = new google.maps.Map(document.getElementById("map"), {
    zoom: 16,
    center: koropi,
  });

  var marker = new google.maps.Marker({
    position: koropi,
    map: map,
    draggable: true,
    animation: google.maps.Animation.DROP,
  });

  marker.addListener("click", toggleBounce);

  google.maps.event.addListenerOnce(map, "idle", function () {
    google.maps.event.trigger(map, "resize");
  });
}
