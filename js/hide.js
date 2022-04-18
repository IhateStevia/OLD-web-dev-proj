$("#showhome").click(function () {
  $("#home").show();
  $("#products").css("display", "none");
  $("#about").css("display", "none");
  $("#contact").css("display", "none");
  $("#profile").css("display", "none");
});

$("#showproducts").click(function () {
  $("#home").css("display", "none");
  $("#products").show();
  $("#about").css("display", "none");
  $("#contact").css("display", "none");
  $("#profile").css("display", "none");
});

$("#showabout").click(function () {
  $("#home").css("display", "none");
  $("#products").css("display", "none");
  $("#about").show();
  $("#contact").css("display", "none");
  $("#profile").css("display", "none");
});

$("#showcontact").click(function () {
  $("#home").css("display", "none");
  $("#products").css("display", "none");
  $("#about").css("display", "none");
  $("#contact").show();
  $("#profile").css("display", "none");
});

$("#showprofile").click(function () {
  $("#home").css("display", "none");
  $("#products").css("display", "none");
  $("#about").css("display", "none");
  $("#contact").css("display", "none");
  $("#profile").show();
});

$(function () {
  $(".nav > li").click(function () {
    $(".nav  > li").removeClass("active");
    $(this).addClass("active");
  });
});
