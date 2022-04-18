<?php
header("Access-Control-Allow-Origin: *");
include 'con_vars.php';

/*
function utf8_string_array_encode(&$array){
    $func = function(&$value,&$key){
        if(is_string($value)){
            $value = utf8_encode($value);
        } 
        if(is_string($key)){
            $key = utf8_encode($key);
        }
        if(is_array($value)){
            utf8_string_array_encode($value);
        }
    };
    array_walk($array,$func);
    return $array;
}
*/



$connect = mysqli_connect($host,$user,$pwd,$db);

$sql = "SELECT breakfast,lunch,dinner FROM test_daily_prog ORDER BY test_daily_prog.day ASC";

$result = mysqli_query($connect,$sql);

$ra = array();

while($row = mysqli_fetch_assoc($result)){
	$ra[] = $row;	
}

//$json_array = json_encode(utf8_string_array_encode($ra));
$json_array = json_encode($ra);

echo $json_array;

//decodeURI()

?>