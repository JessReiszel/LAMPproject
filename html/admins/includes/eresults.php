<?php

        include_once '../../dbh.php';

        if(isset($_POST['eventsearch']))
        {

 
		$searcher=mysqli_real_escape_string($_POST['enamesearch']);
		

 	   $sql= "SELECT * from event WHERE eventid='$searcher';";
		echo  $result['eventid'];

		  echo "<table border='1'>
			<tr>
			<th>EventID</th>
			<th>Event Name</th>
			<th>Date</th>
			</tr>";
			
//		while($list=$result->fetch_assoc())
  //              {

			echo "<tr>"; 
			echo "<td>" . $result['eventid'] . "</td>";
			echo "<td>" . $result['eventname'] . "</td>";
		   	echo "<td>" . $result['eventdate'] . "</td>";  

//		}
		echo "</table>";
			
	
	

		}



	

?>
