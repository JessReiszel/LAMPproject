<?php
	include_once '../../dbh.php';
	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b22')
	{
		$sql='select * from equipmentsched;';
		
		$response=$conn->query($sql);

		  echo "<table border='1'>
			<tr>
			<th>Item ID</th>
			<th>Name</th>
			<th>Will be at</th>
			<th>On Date</th>
			</tr>";
		while($result=$response->fetch_assoc())
		{
			echo "<tr>";
			echo "<td>" . $result['iid'] . "</td>";
			echo "<td>" . $result['itemname'] . "</td>";
			echo "<td>" . $result['vname'] . "</td>";  	
		   	echo "<td>" . $result['eventdate'] . "</td>";  
		}

		echo "</table>";
	}
?>

