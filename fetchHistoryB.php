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
//mysqli_close($sql);
 
$mysqli = new mysqli($host,$user,$pwd,$db);
$ra=array();

if ($result = $mysqli->query("SELECT DATETIME,BREAKFAST,LUNCH,DINNER FROM buy_coupon WHERE ACADEMIC_ID=".$ID)) {

    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $ra[] = $row;
    }
    echo json_encode($ra);
}
$result->close();
$mysqli->close();

?>