<?php

include_once '../../dbh.php';



if(isset($_POST['submitevent']))
                {
			

                        $e1=mysqli_real_escape_string($conn, $_POST['e1']);
                     	$e2=mysqli_real_escape_string($conn, $_POST['e2']);
                        $e3=mysqli_real_escape_string($conn, $_POST['e3']);


		$sql1="select vid from venue where vname='$e2';";
		$vid1=$conn->query($sql1);

		
		while($row=mysqli_fetch_assoc($vid1)){
			$rows[]=$row;
		}	

	

		foreach($rows as $row)
                {
                        $finally=$row['vid'];

		}		

		echo $finally;


	       $sql="insert into event (eventname, eventvenue, eventdate) values ('$e1',$finally,$e3);";
  		$insert=$conn->query($sql);
 
		echo	'<form action="../adminhome.php" method="POST">
                                <button type="submit" name="gback">Go Back</button>';




}




?>

