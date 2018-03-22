<?php

include_once '../../dbh.php';


	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b33')
	{

		$sql="select itemname, itemid from item_info;";
		$result=$conn->query($sql);


		echo 'Create a package: choose up to 6 items from the dropdowns to create a package';
		
	
		while ($row=mysqli_fetch_array($result)){
			$rows[]=$row;
		}


		echo '<form method="POST" action="">';
			
		echo '<select name="item1"><option value="" </option> ';		
		foreach ($rows as $row) {
			echo '<option value=' . $row['itemname'] . '>' . $row['itemname'] . '</option>';
		}
		echo '</select> <br>';

	
		echo '<select name="item2"><option value="" </option> ';
                foreach ($rows as $row) {
                        echo '<option value=' . $row['itemname'] . '>' . $row['itemname'] . '</option>';
                }
                echo '</select> <br>';

		echo '<select name="item3"><option value="" </option> ';
                foreach ($rows as $row) {
                        echo '<option value=' . $row['itemname'] . '>' . $row['itemname'] . '</option>';
                }
                echo '</select> <br>';


                echo '<select name="item4"><option value="" </option> ';
                foreach ($rows as $row) {
                        echo '<option value=' . $row['itemname'] . '>' . $row['itemname'] . '</option>';
                }
                echo '</select> <br>';

		echo '<select name="item5"><option value="" </option> ';
                foreach ($rows as $row) {
                        echo '<option value=' . $row['itemname'] . '>' . $row['itemname'] . '</option>';
                }
                echo '</select> <br>';


                echo '<select name="item6"><option value="" </option> ';
                foreach ($rows as $row) {
                        echo '<option value=' . $row['itemname'] . '>' . $row['itemname'] . '</option>';
                }
                echo '</select> <br>';
		echo '<button type="submit" name="createpackage">Create Package</button>';
		
		echo '</form>';



}


?>

