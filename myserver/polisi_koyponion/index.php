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
        $link=$database->open();
        if (!$link){
            echo $DOM->saveHTML();
            exit;
        }
        /* if ($_SERVER["REQUEST_METHOD"] === "GET"){
            $statistic=new Statistic_export();
            $statistic->take_data($database,$link);
        } */
        $date=date('Y/m/d');//this day
        $pinakas1='`buy_coupon`';
        $sql1="SELECT SUM(`BREAKFAST`)as `plithosBREAKFAST`,SUM(`LUNCH`)as `plithosLUNCH`,
                SUM(`DINNER`)as `plithosDINNER`  FROM ";
        $sql2=" WHERE DATE(`DATETIME`)=?;";
        $label=$DOM->getElementById("stoudents_koupons_numbers");
        $answer=$database->asksql($sql1.$pinakas1.$sql2,'s',$date)->fetch_assoc();
        $label->nodeValue=$answer['plithosBREAKFAST']." ".$answer['plithosLUNCH']." ".
        $answer['plithosDINNER'];//$result['plithos'];
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