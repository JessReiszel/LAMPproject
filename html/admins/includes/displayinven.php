<?php
	include_once '../../dbh.php';
	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b2')
	{
	//$btnoption= $_POST['btnclick'];
		$sql= 'call getinventoryyy;' ;

		$response=$conn->query($sql);
		  echo "<table border='1'>
			<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Availability</th>
			<th>Condition</th>
			<th>Price</th>
			</tr>";
		while($result=$response->fetch_assoc())
		{
			echo "<tr>";
			echo "<td>" . $result['ID'] . "</td>";
			echo "<td>" . $result['Name'] . "</td>";
			echo "<td>" . $result['Availability'] . "</td>";  	
		   	echo "<td>" . $result['Condition'] . "</td>";
			echo "<td>" . $result['Price']. "</td>";  
		}

		echo "</table>";
	}
?>
