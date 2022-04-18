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




$sql = mysqli_prepare($connect, "SELECT BREAKFAST,LUNCH,DINNER FROM owner_coupon WHERE ACADEMIC_ID=?");
mysqli_stmt_bind_param($sql, "s", $ID);
mysqli_stmt_execute($sql);
mysqli_stmt_bind_result($sql, $BREAKFAST,$LUNCH,$DINNER);
mysqli_stmt_fetch($sql);
mysqli_stmt_close($sql);


$arr = array('b' => $BREAKFAST, 'l' => $LUNCH, 'd' => $DINNER);
echo json_encode($arr);

?>