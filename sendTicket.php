<?php
include 'con_vars.php';



$connect = mysqli_connect($host,$user,$pwd,$db);
$sql = mysqli_prepare($connect, "SELECT ID FROM test_logged_users WHERE token=?");

mysqli_stmt_bind_param($sql, "s", $_POST['user_id']);

mysqli_stmt_execute($sql);

mysqli_stmt_bind_result($sql, $ID);

mysqli_stmt_fetch($sql);

mysqli_stmt_close($sql);





$sql = mysqli_prepare($connect, "SELECT ID FROM test_users_info WHERE am=?");

mysqli_stmt_bind_param($sql, "s", $_POST['am']);

mysqli_stmt_execute($sql);

mysqli_stmt_bind_result($sql, $ID2);

mysqli_stmt_fetch($sql);

mysqli_stmt_close($sql);



$sql = mysqli_prepare($connect, "SELECT BREAKFAST,LUNCH,DINNER FROM owner_coupon WHERE ACADEMIC_ID=?");

mysqli_stmt_bind_param($sql, "s", $ID);

mysqli_stmt_execute($sql);

mysqli_stmt_bind_result($sql, $BREAKFAST,$LUNCH,$DINNER);

mysqli_stmt_fetch($sql);

mysqli_stmt_close($sql);



mysqli_autocommit($connect, FALSE);

if($_POST['ticket_type'] == "b" && $BREAKFAST>0){ 
        mysqli_query($connect, "UPDATE owner_coupon SET BREAKFAST=BREAKFAST+1 WHERE ACADEMIC_ID=".$ID2);
        mysqli_query($connect, "UPDATE owner_coupon SET BREAKFAST=BREAKFAST-1 WHERE ACADEMIC_ID=".$ID);
        mysqli_query($connect, "INSERT INTO send_coupon (DATE, SENDER_ID, RECEIVER_ID, BREAKFAST, LUNCH,DINNER) VALUES (CURRENT_TIMESTAMP(),".$ID.",".$ID2.",1,0,0)");

	
}elseif($_POST['ticket_type'] == "l" && $LUNCH>0){
        mysqli_query($connect, "UPDATE owner_coupon SET LUNCH=LUNCH+1 WHERE ACADEMIC_ID=".$ID2);
        mysqli_query($connect, "UPDATE owner_coupon SET LUNCH=LUNCH-1 WHERE ACADEMIC_ID=".$ID);
        mysqli_query($connect, "INSERT INTO send_coupon (DATE, SENDER_ID, RECEIVER_ID, BREAKFAST, LUNCH,DINNER) VALUES (CURRENT_TIMESTAMP(),".$ID.",".$ID2.",0,1,0)");

	
}elseif($_POST['ticket_type'] == "d" && $DINNER>0){
        mysqli_query($connect, "UPDATE owner_coupon SET DINNER=DINNER+1 WHERE ACADEMIC_ID=".$ID2);
        mysqli_query($connect, "UPDATE owner_coupon SET DINNER=DINNER-1 WHERE ACADEMIC_ID=".$ID);
        mysqli_query($connect, "INSERT INTO send_coupon (DATE, SENDER_ID, RECEIVER_ID, BREAKFAST, LUNCH,DINNER) VALUES (CURRENT_TIMESTAMP(),".$ID.",".$ID2.",0,0,1)");

	
}else{
        echo "Αποτυχία!";
        mysqli_autocommit($connect, TRUE);
        mysqli_close($connect); 
        exit;
 
 }

if (!mysqli_commit($connect)) {
    echo "Αποτυχία!";
    mysqli_autocommit($connect, TRUE);
    mysqli_close($connect);
    exit;
    }


mysqli_autocommit($connect, TRUE);
mysqli_close($connect);
echo "Επιτυχία!";

?>