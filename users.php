<center>
<img src=".\ParagonEnergySoftware-Arc.png"</P> 
</center>

<?php session_start(); 

	$db="(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))(CONNECT_DATA =(SERVER = DEDICATED)(SERVICE_NAME = VANGUARD)))"; // server
	$un="Paragon"; // username 
	$pass="Paragon"; // password 
	$db_name="VANGUARD"; // Database name 
	
	$connect = oci_connect($un, $pass, $db_name) or die("cannot connect"); 
	
	$sql = "SELECT * FROM USERS US";
	
	$result = oci_parse($connect, $sql);
	oci_execute ($result);
	$count=oci_fetch_all($result,$array, null, null, OCI_FETCHSTATEMENT_BY_ROW);
	
	echo "<table border=\"1\"><tr><th>Username</th><th>Password</th></tr>\n";
	
	if ($_SESSION["group"]==2)
		foreach($array as $row){
			echo "<tr>\n";
			echo "<td style=\"padding:5px\">";
				echo $row["USERNAME"];
			echo "</td>";

		
			echo "<td style=\"padding:5px\">";
				echo $row["PASS"];
			echo "</td>";
		
			echo "</tr>\n";
	}
	else if ($_SESSION["group"]==1)
		foreach($array as $row){
			echo "<tr>\n";
			echo "<td style=\"padding:5px\">";
				echo $row["USERNAME"];
			echo "</td>";

		
			echo "<td style=\"padding:5px\">";
			if ($row["ID"]==$_SESSION["userId"])
				echo $row["PASS"];
			else
				echo "HIDDEN";
			echo "</td>";
		
			echo "</tr>\n";
	}
		else if ($_SESSION["group"]==0)
			foreach($array as $row){
				if ($row["ID"]==$_SESSION["userId"]){
				echo "<tr>\n";
				echo "<td style=\"padding:5px\">";
					echo $row["USERNAME"];
						echo "</td>";
						echo "<td style=\"padding:5px\">";
					echo $row["PASS"];}
						echo "</td>";
						echo "</tr>";
	}
	echo "</table>\n";
	
?>