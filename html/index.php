<?php

	include_once 'header.php';

?>

<section class="main-container">
	<div class="main-wrapper">


	<?php
	   if(isset($_SESSION['sesh_username'])) {
		if($_SESSION['sesh_usertype']=="admin") {
		echo "Hello " . $_SESSION['sesh_username'];
		?>
		 <h2>WELCOME TO THE ADMIN PAGE</h2>
			






	      <?php
		} else {
	        ?>
		 <h2>WELCOME TO THE USER PAGE</h2> 


		<?php	
 		  echo "Hello normal user";
		    } 
 



 	   }

		?>

	</div>


</section>


<?php

        include_once 'footer.php';

?>
