<center>
<img src=".\ParagonEnergySoftware-Arc.png"</P> 
</center>

<?php session_start(); 

	$db="(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))(CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME = VANGUARD)))"; // server
	$un="Paragon"; // username 
	$pass="Paragon"; // password 
	$db_name="VANGUARD"; // Database name 
	
	$connect = oci_connect($un, $pass, $db_name) or die("cannot connect"); 
	
	$sql = "SELECT * FROM CUSTOMERS CU";
	
	$result = oci_parse($connect, $sql);
	oci_execute ($result);
	$count=oci_fetch_all($result,$array, null, null, OCI_FETCHSTATEMENT_BY_ROW);

	echo "<table border=\"1\"><tr><th>Client</th><th>Client Address</th><th>Client Phone #</th><th>Client Email</th></tr>\n";
	
	foreach($array as $row){
		echo "<tr>\n";
		echo "<td style=\"padding:5px\">";
			echo $row["NAME"];
		echo "</td>";

		
		echo "<td style=\"padding:5px\">";
			echo $row["ADDRESS"];
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo $row["PHONE"];
		echo "</td>";
		
		echo "<td style=\"padding:5px\">";
			echo $row["EMAIL"];
		echo "</td>";
		echo "</tr>\n";
	}
	echo "</table>\n";
	
?>