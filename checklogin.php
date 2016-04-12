<?php
        
        $db="(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))(CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME = VANGUARD)))"; // server
       $un="Paragon"; // username 
       $pass="Paragon"; // password 
       $db_name="VANGUARD"; // Database name 
        
       // Connect to server and select databse.
       $connect = oci_connect($un, $pass, $db_name) or die("cannot connect"); 
        
// username and password sent from form 
$username = trim($_POST['username']); 
$password = trim($_POST['password']);

       $result = oci_parse($connect, "select * from users where username=:un and pass=:pw");
       
	   
	   oci_bind_by_name($result, ':un', $username);
	   oci_bind_by_name($result, ':pw', $password); 
	   oci_execute ($result);
	   $count=oci_fetch_all($result,$array);
        
// If result matched $username and $password, table row must be 1 row
if($count==1){
session_start(); 
$_SESSION["userId"] = $array["ID"][0];

header("location:landingpage.php");
}
else {
echo "Wrong Username or Password";
}
     ?>
