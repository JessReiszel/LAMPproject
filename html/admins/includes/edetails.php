<?php

	include_once '../../dbh.php';

	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b11')
	{

		
		echo ' Search events by: <br>
			
			 <form action="includes/eresults.php" method="POST">
                               <input type="text" name="enamesearch" placeholder="Enter event ID or name">
                                <button type="submit" name="submit">Display Event Details</button>
                                </form>';

	}
?>

