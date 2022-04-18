

var request = new XMLHttpRequest();

request.open("GET", "dailyProgram.php", true);

request.onreadystatechange = function () {
  if (request.readyState == 4 && request.status == 200) {
    var jsonObject = JSON.parse(request.responseText);

    var str =
      "<table><thead><tr><th>Μέρα</th><th>Πρωινό</th><th>Μεσημεριανό</th><th>Βραδινό</th></tr></thead><tbody>";

    var day = [
      "Δευτέρα",
      "Τρίτη",
      "Τετάρτη",
      "Πέμπτη",
      "Παρασκευή",
      "Σάββατο",
      "Κυριακή",
    ];

    for (let i = 0; i < jsonObject.length; i++) {
      str =
        str +
        "<tr><td>" +
        day[i] +
        "</td><td>" +
        jsonObject[i].breakfast +
        "</td><td>" +
        jsonObject[i].lunch +
        "</td><td>" +
        jsonObject[i].dinner +
        "</td></tr>";
    }

    str = str + "</tbody></table>";

    var target = document.getElementById("dailyProg");

    target.innerHTML = str;
  }
};
request.send();
		

