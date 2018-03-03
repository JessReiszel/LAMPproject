<?php

$dbServername="localhost";
$dbUsername="webdata";
$dbPassword="creative";
$dbName="creativegamesinc";


$conn= new mysqli($dbServername,$dbUsername,$dbPassword,$dbName);


if($conn->errno !=0) {
	echo "Connection to database FAILED: " .$conn->error.PHP_EOL ;
	exit(0);
} 
echo "Connection SUCCESS";

/*
$sql= "select * from venue;" ;
$response=$conn->query($sql);


while($result=$response->fetch_assoc())
{
	var_dump($result);
	echo PHP_EOL;

}
*/


?>
