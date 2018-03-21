<?php

	include_once '../header.php';

?>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>




        <script>
                $(document).ready(function() {

			 $("#b1").click(function() {
                                $(".db-content-area").load("includes/eventsched.php", {btnclick: "b1"});                             
                          });

				 	 $("#b11").click(function() {
                                $(".db-content-area").load("includes/edetails.php", {btnclick: "b11"});                             
                          });


                         $("#b2").click(function() {
                                $(".db-content-area").load("includes/displayinven.php", {btnclick: "b2"});                             
                          });

					  $("#b22").click(function() {
                                $(".db-content-area").load("includes/equipuse.php", {btnclick: "b22"});                             
                          });



			 $("#b3").click(function() {
                                $(".db-content-area").load("includes/viewpacks.php", {btnclick: "b3"});                             
                          });

					$("#b33").click(function() {
                                $(".db-content-area").load("includes/packagefuncs.php", {btnclick: "b33"});                             
                          });


		 	 $("#b4").click(function() {
                                $(".db-content-area").load("includes/addevent.php", {btnclick: "b4"});                             
                          });


		    });
        </script>







<section class="main-container">
	<div class="main-wrapper">


	<?php
	   if(isset($_SESSION['sesh_username']) && $_SESSION['usertype']='admin') {	?>

		<h3>WELCOME ADMIN: <?php echo $_SESSION['sesh_username'];  ?> </h3>
		<br> <br> <br>

		<div class="flex-container">

		<div style="flex-grow: 1"><h2> MENU</h2>
			<button class="button button1" id="b1">View Event Schedule</button>
				 <button class="button buttontiny" id="b11">View Event Details</button>
			<button class="button button1" id="b2">View Inventory</button>
				<button class="button buttontiny" id="b22">View Equipment Schedule</button>
			<button class="button button1" id="b3">View Packages</button>
				 <button class="button buttontiny" id="b33">Create/Remove Packages</button>
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

