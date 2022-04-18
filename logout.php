<?php
session_start();
include 'con_vars.php';
$conn = new mysqli($host,$user,$pwd,$db);
$sql = $conn->prepare("DELETE FROM test_logged_users WHERE token = ?");
$sql->bind_param('s', $_COOKIE['user_id']);
$sql->execute();
$sql->close();
$conn->close();	
setcookie('user_id',$_COOKIE['user_id'],time()-(365 * 24 * 60 * 60));
session_destroy();
header("Location: Index.php"); /* Redirect browser */
exit();
?>