<?php
require('test_table.php');
class Statistic_export{

    function take_data(){//$database){
        $args=array("eidos_geymatos"=>FILTER_SANITIZE_STRING,
            "from_day"=>FILTER_SANITIZE_STRING,
            "to_day"=>FILTER_SANITIZE_STRING,
            "breakfast"=>FILTER_SANITIZE_STRING,
            "lunch" => FILTER_SANITIZE_STRING,
            "dinner" => FILTER_SANITIZE_STRING,
            "katigoria_xristi" => FILTER_SANITIZE_STRING);

        $elegmenes_Apantiseis=filter_var_array($_REQUEST,$args);
        //apomonosi mono ayton poy thelo
        $Apantiseis=array();
        foreach ($args as $key => $value)
            if (isset($elegmenes_Apantiseis[$key]))
                $Apantiseis[$key] = $elegmenes_Apantiseis[$key];
        //return $Apantiseis;
        [$sql1,$sql2]=$this->make_sql_statment($Apantiseis);
        //$results= array();
        if ($sql1===NULL)
            exit();
        elseif ($Apantiseis["katigoria_xristi"]==="buy")
            $table='`buy_coupon`';
        elseif ($Apantiseis["katigoria_xristi"]==="use")
            $table='`use_coupon`';
        else
            exit();
        report($sql1.$sql2,'ss', $Apantiseis["from_day"],$Apantiseis["to_day"] );//$results[$table]=$database->asksql($sql1.$table.$sql2,'ss', $Apantiseis["from_day"],$Apantiseis["to_day"] );

        

    }

    function make_sql_statment($answers){
        if ( !isset($answers["katigoria_xristi"]) or !isset($answers["eidos_geymatos"]) or !isset($answers["from_day"]) or !isset($answers["to_day"]))
            return [Null,Null];
        $sql="SELECT ";
        if (isset($answers["breakfast"]))
            $sql.="sum(`breakfast`) as `coupons_sum_breakfast`,";
        if (isset($answers["lunch"]))
            $sql.="sum(`lunch`) as `coupons_sum_lunch`,";
        if (isset($answers["dinner"]))
            $sql.="sum(`dinner`) as `coupons_sum_dinner`,";
        if ($sql==="SELECT ")
            return [Null,Null];
        if ($answers["katigoria_xristi"]==="buy")
            $sql.='DATE(`DATETIME`) AS `DATE`
            FROM `buy_coupon`';
        elseif ($answers["katigoria_xristi"]==="use")
            $sql.='DATE(`DATE`) AS `DATE`
            FROM`use_coupon`';
        else
            return [Null,Null];
        $sql2="GROUP BY `DATE`
        HAVING `DATE`>=? AND `DATE` <=?;";
        return [$sql,$sql2];
    }
}
(new Statistic_export())->take_data();
?>