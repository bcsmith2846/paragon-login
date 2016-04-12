<center>
<img src=".\ParagonEnergySoftware-Arc.png"</P> 
</center>

<?php session_start(); 

	$db="(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))(CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME = VANGUARD)))"; // server
	$un="Paragon"; // username 
	$pass="Paragon"; // password 
	$db_name="VANGUARD"; // Database name 
	
	// Connect to server and select databse.
	$connect = oci_connect($un, $pass, $db_name) or die("cannot connect"); 

	$result = oci_parse($connect, "select * from users where id=:id");
       
	   
	oci_bind_by_name($result, ':id', $_SESSION["userId"]);
	oci_execute ($result);
	$count=oci_fetch_all($result,$array);
	
	$username = $array["USERNAME"][0];
	echo "<h1>Welcome {$username}!</h1>";
?>
