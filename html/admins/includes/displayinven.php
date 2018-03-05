<?php
	include_once '../../dbh.php';
	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b2')
	{
	//$btnoption= $_POST['btnclick'];
		$sql= 'select inventory.iid, item_info.itemname, inventory.iavailable, inventory.icondition, item_info.itemprice from inventory join item_info on inventory.itype=item_info.itemid;' ;
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
			echo "<td>" . $result['iid'] . "</td>";
			echo "<td>" . $result['itemname'] . "</td>";
			echo "<td>" . $result['iavailable'] . "</td>";  	
		   	echo "<td>" . $result['icondition'] . "</td>";
			echo "<td>" . $result['itemprice']. "</td>";  
		}

		echo "</table>";
	}
?>
