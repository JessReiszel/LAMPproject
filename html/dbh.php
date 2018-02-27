<?php

$dbServername="localhost";
$dbUsername="root";
$dbPassword="creative";
$dbName="creativegamesinc";


$conn= mysqli_connect($dbServername,$dbUsername,$dbPassword,$dbName);


if(!$conn) {
	die("Connection FAILED: " . mysql_connect_error()) ;

} 
echo "Connection SUCCESS";

?>
