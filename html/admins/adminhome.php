<?php

	include_once '../header.php';

?>

<section class="main-container">
	<div class="main-wrapper">


	<?php
	   if(isset($_SESSION['sesh_username'])) {
		echo "Hello " . $_SESSION['sesh_username'];
	?>

		<h2>WELCOME TO THE ADMIN PAGE</h2>

		<div class="flex-container">
		<div style="flex-grow: 1"><h2> MENU</h2>
			<button class="button button1">View Event Schedule</button>
			<button class="button button1">View Inventory</button>
			<button class="button button1">View Packages</button>
	                <button class="button button1">Add Event</button>

			 </div>
		<div style="flex-grow: 2"> CONTENT </div>

		</div>
		<?php	      
		}
 
		?>

	</div>


</section>


<?php

        include_once '../footer.php';

?>

