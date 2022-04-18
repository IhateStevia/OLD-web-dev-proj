<?php
// Always start this first
session_start();
//include 'con_vars.php';

function gen($input, $strength = 16) {
    $in_len = strlen($input);
    $rand_s = '';
    for($i = 0; $i < $strength; $i++) {
        $rand_ch = $input[random_int(0, $in_len - 1)];
        $rand_s .= $rand_ch;
    }
 
    return $rand_s;
}
function name2($question1,$question2,$header_page){
    include 'con_vars.php';
    //$host ="fdb26.biz.nf";
    //$user ="3019202_estiatorio";
    //$pwd ="project2019";
    //$db ="3019202_estiatorio";
    $conn = new mysqli($host,$user,$pwd,$db);
    if ($conn->connect_error) 
        die("Connection failed: " . $conn->connect_error);
    $sql = $conn->prepare($question1);
    $sql->bind_param('s', $_POST['username']);
    $sql->execute();
    // $result = $sql->get_result();
    // $user = $result->fetch_object();
    $sql->bind_result($ID,$username, $password);
    // Verify user password and set $_SESSION
    while ($sql->fetch()) {
        //printf ("%s (%s)\n", $username, $password);
        }
    if ( password_verify( $_POST['password'], $password ) ) {
    
        $inp = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $token = gen($inp, 8).gen($inp, 20).gen($inp, 100);
        $sql = $conn->prepare($question2);
        $sql->bind_param('is', $ID, $token);
        $sql->execute();
        $sql->close();
        $conn->close();
        
        setcookie('user_id',$token,time()+(365 * 24 * 60 * 60));
        $_SESSION['user_id'] = $token;
        header($header_page); /* Redirect browser */

        return true;
    }
    return False;
}

if ( ! empty( $_POST ) )
    if ( isset( $_POST['username'] ) && isset( $_POST['password'] ) ) {
        if (name2("SELECT * FROM test_users WHERE username = ?","INSERT INTO test_logged_users (ID, token)	VALUES (?,?)","Location: /Logged.html"))
            exit();
        if (name2("SELECT * FROM sell_users WHERE username = ?","INSERT INTO sell_logged_users (ID, token)	VALUES (?,?)","Location: /myserver/polisi_koyponion/index.html"))
            exit();
        if (name2("SELECT * FROM check_users WHERE username = ?","INSERT INTO check_logged_users (ID, token)	VALUES (?,?)","Location: /myserver/Arxiki_eisodou/index.html"))
            exit();
        header("Location: /loginForm.html"); /* Redirect browser */
        exit();
    }
?>