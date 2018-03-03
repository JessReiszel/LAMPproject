<?php

	include_once 'header.php';

?>

<section class="main-container">
	<div class="main-wrapper">


	<?php
	   if(isset($_SESSION['sesh_username'])) {
		if($_SESSION['sesh_usertype']!=="admin") {
		echo "Hello " . $_SESSION['sesh_username'];

		print' <h2>WELCOME TO THE USER PAGE</h2>'; 	
 		  echo "<div class='testt'>Hello normal user</div>";


		?>
		<div class="flex-container">
		<div style="flex-grow: 1"><h2> MENU</h2>
			<button class="button button1">View Event Calendar</button>
			<button class="button button1">View Packages</button>
			<button class="button button1">Submit Request</button>

			 </div>
		<div style="flex-grow: 2"> CONTENT </div>

		</div>
		<?php
		    }
 
 
		else {
		
		echo"Error: Admin user- YOU SHOULD BE ON ADMIN PAGE"; }
		}

		?>

	</div>


</section>


<?php

        include_once 'footer.php';

?>
