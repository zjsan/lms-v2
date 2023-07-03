<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "lms-v2_capstonedb";

//creating connection
$connection = new mysqli($servername, $username, $password, $dbname);
 
//checking connection
if($connection->connect_error)
{
	die("Connection Failed: ". $connection->connect_error);
}	

?>