<?php

	include_once 'header.php';

?>


 <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>




        <script>
                $(document).ready(function() {

			 $("#b1").click(function() {
                                $(".db-content-area").load("includes/viewcal.php", {btnclick: "b1"});                             
                          });

                         $("#b2").click(function() {
                                $(".db-content-area").load("includes/viewpackages.php", {btnclick: "b2"});                             
                          });


			 $("#b3").click(function() {
                                $(".db-content-area").load("includes/subrequest.php", {btnclick: "b3"});                             
                          });


		    });
        </script>





<section class="main-container">
	<div class="main-wrapper">


	<?php
	   if(isset($_SESSION['sesh_username'])) {
		if($_SESSION['sesh_usertype']!=="admin") {
		?>
	<h2>WELCOME USER: <?php echo $_SESSION['sesh_username']; ?> </h2>


		<div class="flex-container">
		<div style="flex-grow: 1"><h2> MENU</h2>
			<button class="button button1" id="b1">View Event Calendar</button>
			<button class="button button1" id="b2">View Packages</button>
			<button class="button button1" id="b3">Submit Request</button>

			 </div>
		<div style="flex-grow: 5">
		<div class="db-content-area"> CONTENT </div>
		
		</div>
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
