<?php
header("Access-Control-Allow-Origin: *");
include 'con_vars.php';

$connect = mysqli_connect($host,$user,$pwd,$db);
$sql = mysqli_prepare($connect, "SELECT name,lname FROM test_users_info WHERE am=?");
mysqli_stmt_bind_param($sql, "s", $_POST['am']);


mysqli_stmt_execute($sql);
mysqli_stmt_bind_result($sql, $name,$lname );
mysqli_stmt_fetch($sql);
mysqli_stmt_close($sql);

$arr = array('name' => $name, 'lname' => $lname );

echo json_encode($arr);

?>