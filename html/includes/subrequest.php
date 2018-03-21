<?php

include_once '../dbh.php';
	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b3')
	{


		
		echo 'Please enter your information and message below: <br>
			
			 <form action="/includes/addreq.php" method="POST">
                               <input type="text" name="m1" placeholder="Email"><br>
				<input type="text" name="m2" placeholder="Full Name"><br>
				<input type="text" name="m3" placeholder="Event Type"><br>
				<input type="text" name="m4" placeholder="Event Date"><br>
				<input type="text" name="m5" placeholder="Message"><br>
                                <button type="submit" name="submitrequest">Submit Request</button>
                                </form>';



		

}

?>

