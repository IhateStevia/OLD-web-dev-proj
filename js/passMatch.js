function check_pass() {
    if (document.getElementById('password').value ==
            document.getElementById('psw-repeat').value) {
        document.getElementById('submit').disabled = false;
    } else {
        document.getElementById('submit').disabled = true;
    }
}