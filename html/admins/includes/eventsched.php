<?php
	include_once '../../dbh.php';
	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b1')
	{
		$sql='select e.eventid, e.eventname, v.vname, e.eventdate from event e, venue v where e.eventvenue=v.vid;
;';
		
		$response=$conn->query($sql);

		  echo "<table border='1'>
			<tr>
			<th>Event/Contract ID</th>
			<th>Event Name</th>
			<th>Location</th>
			<th>Date</th>
			</tr>";
		while($result=$response->fetch_assoc())
		{
			echo "<tr>";
			echo "<td>" . $result['eventid'] . "</td>";
			echo "<td>" . $result['eventname'] . "</td>";
			echo "<td>" . $result['vname'] . "</td>";  	
		   	echo "<td>" . $result['eventdate'] . "</td>";  
		}

		echo "</table>";
	}
?>
