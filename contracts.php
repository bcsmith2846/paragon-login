<center>
<img src=".\ParagonEnergySoftware-Arc.png"</P> 
</center>

<?php session_start(); 

	$db="(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))(CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME = VANGUARD)))"; // server
	$un="Paragon"; // username 
	$pass="Paragon"; // password 
	$db_name="VANGUARD"; // Database name 
	
	$connect = oci_connect($un, $pass, $db_name) or die("cannot connect"); 
	
	$sql = "SELECT CU.NAME CUSTOMER, CO.NAME CONTRACT, CO.RATE, CO.START_DATE, CO.END_DATE, CONCAT( E.FIRST_NAME, CONCAT(' ', E.LAST_NAME)) E_NAME, BT.NAME BILLING_TYPE FROM CUSTOMERS CU, CONTRACTS CO LEFT JOIN EMPLOYEES E ON CO.E_ID = E.ID, BILLING_TYPES BT WHERE CO.C_ID = Cu.ID AND CO.BT_ID = BT.ID ORDER BY CU.ID";
	
	$result = oci_parse($connect, $sql);
	oci_execute ($result);
	$count=oci_fetch_all($result,$array, null, null, OCI_FETCHSTATEMENT_BY_ROW);
	
	echo "<table border=\"1\"><tr><th>Customer</th><th>Employee</th><th>Rate</th><th>Billing Type</th><th>Start Date</th><th>End Date</th></tr>\n";
	
	foreach($array as $row){
		echo "<tr>\n";
		echo "<td style=\"padding:5px\">";
			echo $row["CUSTOMER"];
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo $row["E_NAME"];
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo sprintf("$%01.2f",$row["RATE"]);
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo $row["BILLING_TYPE"];
		echo "</td>";
				
		echo "<td style=\"padding:5px\">";
			echo $row["START_DATE"];
		echo "</td>";
				
		echo "<td style=\"padding:5px\">";
			echo $row["END_DATE"];
		echo "</td>";
		echo "</tr>\n";
		}
	echo "</table>\n";
	
?>