<?php
header("Access-Control-Allow-Origin: *");
include 'con_vars.php';

$connect = mysqli_connect($host,$user,$pwd,$db);
$sql = mysqli_prepare($connect, "SELECT ID FROM test_logged_users WHERE token=?");
mysqli_stmt_bind_param($sql, "s", $_POST['user_id']);


mysqli_stmt_execute($sql);
mysqli_stmt_bind_result($sql, $ID);
mysqli_stmt_fetch($sql);
mysqli_stmt_close($sql);




$sql = mysqli_prepare($connect, "SELECT name,lname,fname,am,cn,dep,stdC FROM test_users_info WHERE ID=?");
mysqli_stmt_bind_param($sql, "s", $ID);
mysqli_stmt_execute($sql);
mysqli_stmt_bind_result($sql, $name,$lname,$fname,$am,$cn,$dep,$stdC);
mysqli_stmt_fetch($sql);
mysqli_stmt_close($sql);


$arr = array('name' => $name, 'lname' => $lname, 'fname' => $fname, 'am' => $am, 'idN' => $cn ,'dep' => $dep);
echo json_encode($arr);

?>