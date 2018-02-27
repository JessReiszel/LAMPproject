<?php

/*Checks that button is actually clicked*/
if(isset($_POST['submit'])) {
     require_once ("../dbh.php");
    
     $uname=mysqli_real_escape_string($conn, $_POST['username']);
     $pwd=mysqli_real_escape_string($conn, $_POST['password']);


  //Error Handlers for user input
    //Check if empty
     if(empty($uname) || empty($pwd)) {
	 header("Location: ../index.php?login=empty");
	 exit();
     } else { 
 	   $sql= "SELECT * FROM users WHERE username='$uname';";
	   $result= mysqli_query($conn, $sql);
	   $resultCheck=mysqli_num_rows($result);
		
	     if ($resultCheck < 1) {
		header("Location: ../index.php?login=error");
		exit();
	     } else {
		  if($row=mysqli_fetch_assoc($result)) {

			if($row["password"]==$pwd) {
				
			 header("Location: ../index.php?login=YOURELOGGEDIN");
               		 exit();
		

			} else {

			  header("Location: ../index.php?login=INVALIDPWD");
                         exit(); 

			
			}
		     
 
                  }

	       }
	
         }

     }


/*Handles if the button is not clicked*/
else {
     header("Location: ../index.php");
     exit();

}
