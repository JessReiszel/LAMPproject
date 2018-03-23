<?php

include_once '../../dbh.php';

	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b4')
	{

	
		 $sql="select vname from venue;";
                $result=$conn->query($sql);



                while ($row=mysqli_fetch_array($result)){
                        $rows[]=$row;
                }

		
		echo 'Create an event: <br>
			
			 <form action="includes/addevent.php" method="POST">
                               <input type="text" name="e1" placeholder="Event Name"><br>
				<select name="e2"><option value="Select a Venue" </option> ';
               			 foreach ($rows as $row) {
                       		 echo '<option value="' . $row['vname'] . '">"' . $row['vname'] . '"</option>';
               				 } echo '</select> <br>';

			echo '	<input type="text" name="e3" placeholder="Event Date YYYYMMDD"><br>
                                <button type="submit" name="submitevent">Submit Event</button>
                                </form>';




}


?>

