<?php

	include_once '../header.php';

?>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>




        <script>
                $(document).ready(function() {

			 $("#b1").click(function() {
                                $(".db-content-area").load("includes/eventsched.php", {btnclick: "b1"});                             
                          });

                         $("#b2").click(function() {
                                $(".db-content-area").load("includes/displayinven.php", {btnclick: "b2"});                             
                          });


			 $("#b3").click(function() {
                                $(".db-content-area").load("includes/viewpacks.php", {btnclick: "b3"});                             
                          });

		 	 $("#b4").click(function() {
                                $(".db-content-area").load("includes/addevent.php", {btnclick: "b4"});                             
                          });


		    });
        </script>







<section class="main-container">
	<div class="main-wrapper">


	<?php
	   if(isset($_SESSION['sesh_username'])) {	?>

		<h2>WELCOME ADMIN: <?php echo $_SESSION['sesh_username'];  ?> </h2>

		<div class="flex-container">

		<div style="flex-grow: 1"><h2> MENU</h2>
			<button class="button button1" id="b1">View Event Schedule</button>
			<button class="button button1" id="b2">View Inventory</button>
			<button class="button button1" id="b3">View Packages</button>
	                <button class="button button1" id="b4">Add Event</button>

			 </div>
		<div style="flex-grow: 5">
			 <div class="db-content-area"> CONTENT </div>



		</div>
		</div>
		<?php	      
		}
 
		?>

	</div>


</section>


<?php

        include_once '../footer.php';

?>

