<?php include 'require.php'; 
	setlocale(LC_MONETARY, 'en_US');
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
	

	if($_SESSION['group'] == 0) {
		
		$username = $array["FIRST_NAME"][0] . " " . $array["LAST_NAME"][0];
		echo "<h1>Welcome {$username}</h1>\n";
		$count = 0;
		$array = array();
	
		$sql = "SELECT CU.NAME CUSTOMER, CO.NAME CONTRACT, CO.RATE, CO.START_DATE, CO.END_DATE, BT.NAME BILLING_TYPE, CONCAT( E.FIRST_NAME, CONCAT(' ', E.LAST_NAME)) E_NAME FROM CUSTOMERS CU, CONTRACTS CO, EMPLOYEES E, USERS U, BILLING_TYPES BT WHERE CO.E_ID = E.ID AND CO.C_ID = Cu.ID AND E.U_ID = U.ID AND CO.BT_ID = BT.ID AND U.ID=:id ORDER BY CU.ID";
	
		$result = oci_parse($connect, $sql);
		oci_bind_by_name($result, ':id', $_SESSION["userId"]); 
		oci_execute ($result);
		$count=oci_fetch_all($result,$array, null, null, OCI_FETCHSTATEMENT_BY_ROW);
	}
	if($_SESSION['group'] == 1) {
		
		$username = $array["FIRST_NAME"][0] . " " . $array["LAST_NAME"][0];
		echo "<h1>Welcome {$username}</h1>\n";
		$count = 0;
		$array = array();	
				
		$sql = "SELECT CU.NAME CUSTOMER, CO.NAME CONTRACT, CO.RATE, CO.START_DATE, CO.END_DATE, BT.NAME BILLING_TYPE, CONCAT( E.FIRST_NAME, CONCAT(' ', E.LAST_NAME)) E_NAME FROM CUSTOMERS CU, CONTRACTS CO, EMPLOYEES E, USERS U, BILLING_TYPES BT WHERE CO.C_ID IN (SELECT CON.C_ID FROM CONTRACTS CON WHERE CON.E_ID = E.ID) AND (CO.E_ID = E.ID OR CO.E_ID IS NULL)  AND CU.ID = CO.C_ID AND  E.U_ID = U.ID AND CO.BT_ID = BT.ID AND U.ID=:id ORDER BY CU.ID";
	
		$result = oci_parse($connect, $sql);
		oci_bind_by_name($result, ':id', $_SESSION["userId"]); 
		oci_execute ($result);
		$count=oci_fetch_all($result,$array, null, null, OCI_FETCHSTATEMENT_BY_ROW);
	}
	if($_SESSION['group'] == 2) {
		echo "<h1>Welcome Admin</h1>";
		
		$sql = "SELECT CU.NAME CUSTOMER, CO.NAME CONTRACT, CO.RATE, CO.START_DATE, CO.END_DATE, CONCAT( E.FIRST_NAME, CONCAT(' ', E.LAST_NAME)) E_NAME, BT.NAME BILLING_TYPE FROM CUSTOMERS CU, CONTRACTS CO LEFT JOIN EMPLOYEES E ON CO.E_ID = E.ID, BILLING_TYPES BT WHERE CO.C_ID = Cu.ID AND CO.BT_ID = BT.ID ORDER BY CU.ID";
	
		$result = oci_parse($connect, $sql);
		oci_execute ($result);
		$count=oci_fetch_all($result,$array, null, null, OCI_FETCHSTATEMENT_BY_ROW);
	}
	
	
	$lastclient = '';
	foreach($array as $row){
		
		if($lastclient != $row['CUSTOMER']){
			if($lastclient != ''){
				echo "</table>\n</br>";
				echo "</div>";
			}
			echo "<div style=\"padding:5px\">\n";
			echo "<h2>";
			echo $row["CUSTOMER"];
			echo "</h2>";
			echo "<table border=\"1\"><tr><th>Contract</th><th>Rate</th><th>Type</th><th>Employee</th><th>Start Date</th><th>End Date</th></tr>\n";
		
		}
			echo "<tr>";
		echo "<td style=\"padding:5px\">";
			if(empty(trim($row["CONTRACT"])))
				echo "Billable";
			else
				echo $row["CONTRACT"];
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo sprintf("$%01.2f",$row["RATE"]);
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo $row["BILLING_TYPE"];
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo $row["E_NAME"];
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo $row["START_DATE"];
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo $row["END_DATE"];
		echo "</td>";
		echo "</tr>\n";
		

		$lastclient = $row['CUSTOMER'];
		
	}
	
	
	
?>

