<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>

<header>

        <nav>
                <div class="main-wrapper">
                        <ul>
                                <li> <a href="index.php"> Home</a></li>
                        </ul>
                        <div class="nav-login">
			<?php
		          if(isset($_SESSION['sesh_username'])) {
			   echo' <form action="includes/logout.php" method="POST">
                                  <button type="submit" name="submit">Logout</button>
                               </form>';
   
		          } else {
			     echo' <form action="includes/login.php" method="POST">
                               <input type="text" name="username" placeholder="Username"><input type="password" name="password" placeholder="Password">
                                <button type="submit" name="submit">Login </button>
                                </form>';


			   }

			?>

                        </div>

                </div>

        </nav>

</header>

