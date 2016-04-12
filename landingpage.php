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

	$result = oci_parse($connect, "select * from EMPLOYEES where U_ID=:id");
       
	   
	oci_bind_by_name($result, ':id', $_SESSION["userId"]);
	oci_execute ($result);
	$count=oci_fetch_all($result,$array);
	
	$username = $array["FIRST_NAME"][0] . " " . $array["LAST_NAME"][0];
	echo "<h1>Welcome {$username}</h1>\n";
	
	
	$sql = "SELECT CU.NAME CUSTOMER, CO.NAME CONTRACT, CO.RATE, CO.START_DATE, CO.END_DATE, BT.NAME BILLING_TYPE, CONCAT( E.FIRST_NAME, CONCAT(' ', E.LAST_NAME)) E_NAME FROM CUSTOMERS CU, CONTRACTS CO, EMPLOYEES E, USERS U, BILLING_TYPES BT WHERE CO.E_ID = E.ID AND CO.C_ID = Cu.ID AND E.U_ID = U.ID AND CO.BT_ID = BT.ID AND U.ID=:id ORDER BY CU.ID";
	
	$result = oci_parse($connect, $sql);
	oci_bind_by_name($result, ':id', $_SESSION["userId"]); 
	oci_execute ($result);
	$count=oci_fetch_all($result,$array, null, null, OCI_FETCHSTATEMENT_BY_ROW);
	

	echo "<table><tr><th>Client</th><th>Contract</th><th>Rate</th><th>Start Date</th><th>End Date</th><th>Type</th><th>Employee</th></tr>\n";
	
	foreach($array as $row){
		echo "<tr>\n";
		foreach($row as $cell) {
			echo "<td style=\"padding:5px\">\n";
			echo $cell . "\n";
			echo "</td>\n";
		}
		echo "</tr>\n";
	}
	
	echo "</table>\n";
	
?>

