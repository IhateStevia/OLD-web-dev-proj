<?php
ini_set('default_charset', 'UTF-8');
header('Content-type: text/html; charset=UTF-8');
if (!isset($_REQUEST['student_id'])){
    echo 'Μη ορισμένος φοιτητής';
    exit();
}
$acad_id=$_REQUEST['student_id'];
if (!$acad_id){
    echo 'Μη ορισμένος φοιτητής';
    exit();
}
include '../php/Database.php';
$database= new Database();
$link= $database->open();
$date=date('Y/m/d');
$link->autocommit(FALSE);
$sql="SELECT `id` FROM `test_users_info` WHERE cn=?;";
$id=$database->asksql($sql,'i',$acad_id)->fetch_assoc()["id"];
$sql="INSERT INTO `owner_coupon` (`BREAKFAST`,`LUNCH`,`DINNER`,`ACADEMIC_ID`)
        VALUES (?,?,?,?) ON DUPLICATE KEY UPDATE 
        `BREAKFAST`=`BREAKFAST`+?,`LUNCH`=`LUNCH`+?,`DINNER`=`DINNER`+? ;";
$k=$database->asksql($sql,'iiiiiii',$_REQUEST['sell_breakfast'],$_REQUEST['sell_lunch'],$_REQUEST['sell_dinner'],$id,
                    $_REQUEST['sell_breakfast'],$_REQUEST['sell_lunch'],$_REQUEST['sell_dinner']);        
//$sql='UPDATE `owner_coupon` SET `BREAKFAST`=`BREAKFAST`+?, `LUNCH`=`LUNCH`+?, `DINNER`=`DINNER`+? WHERE ACADEMIC_ID=?;';
    //$database->asksql($sql,'iiii',$_REQUEST['sell_breakfast'],$_REQUEST['sell_lunch'],$_REQUEST['sell_dinner'],$id);
$rezalt="Σφάλμα με την Βάση";
if (!$link->error){    
    $sql='INSERT INTO `buy_coupon` (`ACADEMIC_ID`,`BREAKFAST`,`LUNCH`,`DINNER`) 
    VALUES (?,?,?,?)';
    $database->asksql($sql,'iiii',$id,$_REQUEST['sell_breakfast'],$_REQUEST['sell_lunch'],$_REQUEST['sell_dinner']);
    if (!$link->error){
        $link->commit(); 
        $rezalt= "Κουπόνι";
    }else
        $link->rollback();
}
$link->autocommit(TRUE);
echo $rezalt;
$database->close();
?>
