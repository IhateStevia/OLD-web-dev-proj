<?php
include 'con_vars.php';

if ( ! empty( $_POST ) ) {

    if ( isset( $_POST['username'] ) && isset( $_POST['password'] ) ) {
		
		
                $BREAKFAST=0;
                $LUNCH=0;
                $DINNER=0;

		$conn = new mysqli($host,$user,$pwd,$db);
		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 
		
		$pwd = $_POST['password'];
		$hashRes=password_hash ($pwd ,PASSWORD_DEFAULT);
		
                                
                
		$sql = $conn->prepare("INSERT INTO test_users (username, password)	VALUES (?,?)");
                $sql->bind_param('ss', $_POST['username'], $hashRes);
                $sql->execute();
		
                if($sql->error){
                        $sql->close();
                        $conn->close();
                        header("Location: /registerForm.html"); 
                        exit();
                        }
                        
                
                $sql = $conn->prepare("SELECT ID FROM test_users WHERE username = ?");
                $sql->bind_param('s', $_POST['username']);
                $sql->execute();
                $sql->bind_result($ID);
                $sql->fetch();
                $sql->close();
                $sql = $conn->prepare("INSERT INTO test_users_info (ID, name,lname,fname,am,cn,dep,stdC) VALUES (?,?,?,?,?,?,?,?)");
                $sql->bind_param('isssiiss', $ID, $_POST['name'],$_POST['lname'],$_POST['fname'],$_POST['am'],$_POST['cn'],$_POST['dep'],$_POST['stdC']);
                $sql->execute();
                
                if($sql->error){
                        $sql->close();
                        $sql = $conn->prepare("DELETE FROM test_users WHERE ID = ?");
                        $sql->bind_param('i', $ID);
                        $sql->execute();
                        $sql->close();
                        $conn->close();
                        header("Location: /registerForm.html"); 
                        exit();
                        }
               
		$sql->close();
                
                $sql = $conn->prepare("INSERT INTO owner_coupon (ACADEMIC_ID, BREAKFAST, LUNCH, DINNER) VALUES (?,?,?,?)");
                $sql->bind_param('iiii', $ID, $BREAKFAST, $LUNCH, $DINNER);
                $sql->execute();
                
                $sql->close();
                $conn->close();
                
                header("Location: /loginForm.html"); 
                exit();
		
	}
}

?>