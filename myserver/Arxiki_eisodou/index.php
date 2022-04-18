<?php
        ini_set("default_charset", "UTF-8");
        header('Content-type: text/html; charset=UTF-8');
        include '../php/Database.php';
        //include '../php/statistic_export.php';
        $DOM = new DOMDocument();
        libxml_use_internal_errors(true);//https://stackoverflow.com/questions/6090667/php-domdocument-errors-warnings-on-html5-tags
        $DOM->loadHTMLFile('index.html');
        libxml_clear_errors();
        $database= new Database();
        if (!$database->open()){
            echo $DOM->saveHTML();
            exit;
        }
        /* if ($_SERVER["REQUEST_METHOD"] === "GET"){
            $statistic=new Statistic_export();
            $statistic->take_data($database,$link);
        } */
        $date=date('Y/m/d');//this day
        $hours=(int)date('H') +1;// one hours past the server
        if ($hours< 12)
            $kat_geymatos='`BREAKFAST`';
        elseif ($hours< 18)
            $kat_geymatos='`LUNCH`';
        else
            $kat_geymatos='`DINNER`';
        $pinakas1='`use_coupon`';
        $pinakas2='`free_food`';
        $sql1="SELECT SUM($kat_geymatos)as `plithos`
            FROM ";
        $sql2=" WHERE `DATE`= ?;";
        $label=$DOM->getElementById("stoudents_koupons_numbers");
        $label->nodeValue=$database->asksql($sql1.$pinakas1.$sql2,'s',$date)->fetch_assoc()['plithos'];//$result['plithos'];
        if ($label->nodeValue=="")
            $label->nodeValue=0;
        $label=$DOM->getElementById("free_food_numbers");
        $label->nodeValue=$database->asksql($sql1.$pinakas2.$sql2,'s',$date)->fetch_assoc()['plithos'];
        if ($label->nodeValue=="")
            $label->nodeValue=0;
        $label=$DOM->getElementById("from_day");
        $label->setAttribute('value',date("Y-m-d"));
        $label->setAttribute('max',date("Y-m-d"));
        $label=$DOM->getElementById("to_day");
        $label->setAttribute('value',date("Y-m-d"));
        $label->setAttribute('max',date("Y-m-d"));
        echo $DOM->saveHTML();
        $database->close();
?>