var requestB = new XMLHttpRequest();

requestB.open("POST", "fetchHistoryB.php", true);

requestB.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

requestB.onreadystatechange = function () {
  if (requestB.readyState == 4 && requestB.status == 200) {
    var arr1 = JSON.parse(requestB.responseText);
    var template = document.querySelector("#bought");
    for (var i = 0; i < arr1.length; i++) {
      var ticket = arr1[i];
      var clone = template.content.cloneNode(true);
      var h2 = clone.querySelectorAll("h2");
      h2[0].innerHTML = "Αγορά";
      var p = clone.querySelectorAll("p");
      p[0].innerHTML =
        "Πρωϊνό: " +
        ticket.BREAKFAST +
        "<br>Μεσημεριανό: " +
        ticket.LUNCH +
        "<br>Δείπνο: " +
        ticket.DINNER +
        "<br>" +
        ticket.DATETIME;
      template.parentNode.appendChild(clone);
    }
  }
};

requestB.send(placehold);

var requestS = new XMLHttpRequest();

requestS.open("POST", "fetchHistoryS.php", true);

requestS.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

requestS.onreadystatechange = function () {
  if (requestS.readyState == 4 && requestS.status == 200) {
    var arr2 = JSON.parse(requestS.responseText);
    var template = document.querySelector("#sent");
    for (var i = 0; i < arr2.length; i++) {
      var ticket = arr2[i];
      var clone = template.content.cloneNode(true);
      var h2 = clone.querySelectorAll("h2");
      h2[0].innerHTML = "Αποστολή";
      var p = clone.querySelectorAll("p");
      p[0].innerHTML =
        "Πρωϊνό: " +
        ticket.BREAKFAST +
        "<br>Μεσημεριανό: " +
        ticket.LUNCH +
        "<br>Δείπνο: " +
        ticket.DINNER +
        "<br>" +
        ticket.DATE;
      template.parentNode.appendChild(clone);
    }
  }
};

requestS.send(placehold);

var requestU = new XMLHttpRequest();

requestU.open("POST", "fetchHistoryU.php", true);

requestU.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

requestU.onreadystatechange = function () {
  if (requestU.readyState == 4 && requestU.status == 200) {
    var arr3 = JSON.parse(requestU.responseText);
    var template = document.querySelector("#used");
    for (var i = 0; i < arr3.length; i++) {
      var ticket = arr3[i];
      var clone = template.content.cloneNode(true);
      var h2 = clone.querySelectorAll("h2");
      h2[0].innerHTML = "Χρήση";
      var p = clone.querySelectorAll("p");
      p[0].innerHTML =
        "Πρωϊνό: " +
        ticket.BREAKFAST +
        "<br>Μεσημεριανό: " +
        ticket.LUNCH +
        "<br>Δείπνο: " +
        ticket.DINNER +
        "<br>" +
        ticket.DATE;
      template.parentNode.appendChild(clone);
    }
  }
};

requestU.send(placehold);

var requestR = new XMLHttpRequest();

requestR.open("POST", "fetchHistoryR.php", true);

requestR.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

requestR.onreadystatechange = function () {
  if (requestR.readyState == 4 && requestR.status == 200) {
    var arr4 = JSON.parse(requestR.responseText);
    var template = document.querySelector("#received");
    for (var i = 0; i < arr4.length; i++) {
      var ticket = arr4[i];
      var clone = template.content.cloneNode(true);
      var h2 = clone.querySelectorAll("h2");
      h2[0].innerHTML = "Αποδοχή";
      var p = clone.querySelectorAll("p");
      p[0].innerHTML =
        "Πρωϊνό: " +
        ticket.BREAKFAST +
        "<br>Μεσημεριανό: " +
        ticket.LUNCH +
        "<br>Δείπνο: " +
        ticket.DINNER +
        "<br>" +
        ticket.DATE;
      template.parentNode.appendChild(clone);
    }
  }
};

requestR.send(placehold);

function tick() {
  var request3 = new XMLHttpRequest();
  request3.open("POST", "fetchTickets.php", true);
  request3.setRequestHeader(
    "Content-type",
    "application/x-www-form-urlencoded"
  );
  request3.onreadystatechange = function () {
    if (request3.readyState == 4 && request3.status == 200) {
      var usr1 = JSON.parse(request3.responseText);
      str2 =
        "<h4>ΥΠΟΛΟΙΠΟ</h4>Πρωϊνό: &nbsp <b>" +
        usr1.b +
        "</b><br>Μεσημεριανό: &nbsp <b>" +
        usr1.l +
        "</b><br>Βραδυνό: &nbsp <b>" +
        usr1.d +
        "</b>";
      var target2 = document.getElementById("tickets");
      target2.innerHTML = str2;
    }
  };
  request3.send(placehold);
}

function check_box() {
  if (document.getElementById("chkbx").value == "yes") {
    document.getElementById("submit").disabled = false;
    document.getElementById("chkbx").value = "no";
  } else {
    document.getElementById("submit").disabled = true;
    document.getElementById("chkbx").value = "yes";
  }
}

function fetchUSR() {
  var request4 = new XMLHttpRequest();
  request4.open("POST", "fetchUSR.php", true);
  request4.setRequestHeader(
    "Content-type",
    "application/x-www-form-urlencoded"
  );
  request4.onreadystatechange = function () {
    if (request4.readyState == 4 && request4.status == 200) {
      var ftUsr = JSON.parse(request4.responseText);
      str3 =
        "<b>Όνομα:&nbsp </b>" +
        ftUsr.name +
        "<br><b>Επώνυμο:&nbsp </b>" +
        ftUsr.lname +
        "<br><br><br>";
      var target3 = document.getElementById("fechedUSR");
      target3.innerHTML = str3;
    }
  };
  request4.send("am=" + document.getElementById("targetAM").value);
}

function sendTick() {
  var request5 = new XMLHttpRequest();
  request5.open("POST", "sendTicket.php", true);
  request5.setRequestHeader(
    "Content-type",
    "application/x-www-form-urlencoded"
  );
  request5.onreadystatechange = function () {
    if (request5.readyState == 4 && request5.status == 200) {
      var transRes = request5.responseText;
      var target4 = document.getElementById("fechedUSR");
      target4.innerHTML = "<br>" + transRes + "<br><br><br>";
    }
  };
  request5.send(
    placehold +
      "&am=" +
      document.getElementById("targetAM").value +
      "&ticket_type=" +
      document.getElementById("sel").value
  );
  tick();
}
