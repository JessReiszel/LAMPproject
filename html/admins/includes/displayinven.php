<?php

	include_once '../../dbh.php';

	if(isset($_POST['btnclick']) && $_POST['btnclick']=='b2')
	{


	//$btnoption= $_POST['btnclick'];


		$sql= 'select inventory.iid as "ID", item_info.itemname as "Name", inventory.iavailable as "Availability", inventory.icondition as "Condition", item_info.itemprice as "Price" from inventory join item_info on inventory.itype=item_info.itemid;' ;
		$response=$conn->query($sql);



		while($result=$response->fetch_assoc())
		{
			var_dump($result);
			echo PHP_EOL;

		}

	}
?>
