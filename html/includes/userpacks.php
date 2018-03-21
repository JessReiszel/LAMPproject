<?php
	include_once '../dbh.php';
	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b2')
	{

		
		$sql='select packageid, count(*) as countblank from package group by packageid order by packageid asc;';
		$response=$conn->query($sql);

		
		while($row=mysqli_fetch_assoc($response)) {
			$rows[]=$row;
		}	


		echo '<table class="packtable"><tr><th>Package Name</th></tr>';
		foreach($rows as $row) 
                {
                        echo'<tr><td> Package:  ' . $row['packageid'] . '</td></tr>';

	
			$num=$row['countblank'];
			

                     for($i=1; $i<$num; $i++)
                        {
                                   echo '<tr><td> &nbsp </td></tr>';
                            	   
                        }

                }

		   echo '</table>';

		 

		$sql2='select ii.itemname from package p, item_info ii where p.pitemid=ii.itemid order by packageid asc;';
                $response2=$conn->query($sql2);
		while($row2=mysqli_fetch_assoc($response2)) {
                        $rows2[]=$row2;
                }
		
		echo '<table class="packtable"><tr><th>Items</th></tr>';
                foreach($rows2 as $row2)
                {
                        echo'<tr><td>' . $row2['itemname'] . '</td></tr>';

		}

		
	}

?>

