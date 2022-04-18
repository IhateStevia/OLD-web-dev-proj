<?php
function fetchUserID($question){
include 'con_vars.php';

        $ID=-1;
        //try auto login 
        //$host ="fdb26.biz.nf";
        //$user ="3019202_estiatorio";
        //$pwd ="project2019";
       // $db ="3019202_estiatorio";
        $conn = new mysqli($host,$user,$pwd,$db);
        $sql = $conn->prepare($question);
        $sql->bind_param('s', $_COOKIE['user_id'] );
        $sql->execute();
        $sql->bind_result($ID);
        $sql->fetch();
        $sql->close();
        $conn->close();
        return $ID;

}

function redirectUser(){
        if( isset( $_COOKIE['user_id']  ) ){    
                if(fetchUserID("SELECT ID FROM test_logged_users WHERE token = ?")>0)
                        return  "Location: /Logged.html";
                if(fetchUserID("SELECT ID FROM sell_logged_users WHERE token = ?")>0)
                        return "Location: /myserver/polisi_koyponion/index.html";
                if(fetchUserID("SELECT ID FROM check_logged_users WHERE token = ?")>0) 
                        return "Location: /myserver/Arxiki_eisodou/index.html";
        }
        return "Location: /Guest.html";
}
header(redirectUser()); 
exit();
?>