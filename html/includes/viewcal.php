<?php
	include_once '../dbh.php';
	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b1')
	{

		
		$sql='select * from eventdatesonly;';
		$response=$conn->query($sql);

		
		while($row=mysqli_fetch_assoc($response)) {
			$rows[]=$row;
		}	


		echo '<table class="packtable"><tr><th>Dates already booked: </th></tr>';
		foreach($rows as $row) 
                {
                        echo'<tr><td>' . $row['eventdate'] . '</td></tr>';
	
                }

		   echo '</table>';

		 

		
	}

?>

