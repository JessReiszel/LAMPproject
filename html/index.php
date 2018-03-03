<?php

	include_once 'header.php';

?>

<section class="main-container">
	<div class="main-wrapper">


	<?php
	   if(isset($_SESSION['sesh_username'])) {
		if($_SESSION['sesh_usertype']!=="admin") {
		?>
	<h2>WELCOME USER: <?php echo $_SESSION['sesh_username']; ?> </h2>


		<div class="flex-container">
		<div style="flex-grow: 1"><h2> MENU</h2>
			<button class="button button1">View Event Calendar</button>
			<button class="button button1">View Packages</button>
			<button class="button button1">Submit Request</button>

			 </div>
		<div style="flex-grow: 5"> CONTENT </div>

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
