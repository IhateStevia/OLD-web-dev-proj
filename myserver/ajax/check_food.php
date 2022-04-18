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
$date=date('Y/m/d');//this day
$hours=(int)date('H') +1;// one hours past the server
if ($hours< 12)
    $kat_geymatos='BREAKFAST';
elseif ($hours< 18)
    $kat_geymatos='LUNCH';
else
    $kat_geymatos='DINNER';
$sql="SELECT `id` FROM `test_users_info` WHERE cn=?;";
$id=$database->asksql($sql,'i',$acad_id)->fetch_assoc()["id"];//$
$sql="SELECT `$kat_geymatos` FROM `owner_coupon` WHERE ACADEMIC_ID=?;";
$answer=$database->asksql($sql,'i',$id)->fetch_assoc();//$_REQUEST("student_id"))->fetch_assoc();
if (!$answer)
    echo 'Μη δικαιοούχος1';
else if ($answer[$kat_geymatos]==0)
    echo 'Μη δικαιοούχος2';
else{
    $link->autocommit(FALSE);
    
    $sql="UPDATE `owner_coupon` SET `$kat_geymatos`=`$kat_geymatos`-1 WHERE ACADEMIC_ID=?;";
    $database->asksql($sql,'i',$id);
    /* $sql="UPDATE `use_coupon` SET`$kat_geymatos`=`$kat_geymatos`+1  WHERE ACADEMIC_ID=? AND `DATE`=?;";
    $database->asksql($sql,'is',$id,$date); */
    $rezalt="Σφάλμα με την Βάση";
    if (!$link->error){
        $sql="INSERT INTO `use_coupon` (`ACADEMIC_ID`,`$kat_geymatos`,`DATE`) 
        VALUES (?,1,?) ON DUPLICATE KEY UPDATE `$kat_geymatos`=`$kat_geymatos`+1 ;";
        $database->asksql($sql,'is',$id,$date);
        if (!$link->error){
            $link->commit();    
            $rezalt="Κουπόνι";
        }
        else
            $link->rollback();
    }
    $link->autocommit(TRUE);
    echo $rezalt;
}
$database->close();
?>