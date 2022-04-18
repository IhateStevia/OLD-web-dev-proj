<?php
function logout($question){
        
        $host ="fdb26.biz.nf";
        $user ="3019202_estiatorio";
        $pwd ="project2019";
        $db ="3019202_estiatorio";
        $conn = new mysqli($host,$user,$pwd,$db);
        $sql = $conn->prepare($question);
        $sql->bind_param('s', $_COOKIE['user_id']);
        $sql->execute();
        $sql->close();
        $conn->close();	
}        
session_start();
logout("DELETE FROM check_logged_users WHERE token = ?;");
logout("DELETE FROM sell_logged_users WHERE token = ?;");
setcookie('user_id',$_COOKIE['user_id'],time()-(365 * 24 * 60 * 60));
session_destroy();
header("Location: ../Index.php"); /* Redirect browser */
exit();
?>