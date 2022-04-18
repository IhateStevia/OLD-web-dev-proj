function getCookie(cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(";");
  for (var i = 0; i < ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == " ") {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}

var ckie = getCookie("user_id");
var placehold = "user_id=" + ckie;

var request = new XMLHttpRequest();
request.open("POST", "fetchProfile.php", true);
request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
request.onreadystatechange = function () {
  if (request.readyState == 4 && request.status == 200) {
    var usr = JSON.parse(request.responseText);

    var template1 = document.querySelector("#uname");
    var template2 = document.querySelector("#std");

    var clone1 = template1.content.cloneNode(true);
    var clone2 = template2.content.cloneNode(true);

    var p1 = clone1.querySelectorAll("p");
    p1[0].innerHTML = usr.name + "<br>" + usr.lname + "<br>" + usr.fname;
    template1.parentNode.appendChild(clone1);

    var p2 = clone2.querySelectorAll("p");
    //p2[0].innerHTML = usr.stdC + "<br>" + usr.dep + "<br>" + usr.am + "<br>" + usr.idN;
    p2[0].innerHTML =
      "" + "<br>" + usr.dep + "<br>" + usr.am + "<br>" + usr.idN;
    template2.parentNode.appendChild(clone2);
  }
};
request.send(placehold);
