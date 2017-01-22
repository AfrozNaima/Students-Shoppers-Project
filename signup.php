<?php

include "dbconnection.php";

var_dump($_POST);
$name = $_POST["name"];
$email = $_POST["email"];
$pass = SHA1($_POST["pass"]);
$mob = $_POST["mobile"];

$query = "INSERT INTO `ecommerce`.`users` (`name`, `email`, `pass`,  `mobile`) VALUES ('$name', '$email', '$pass', '$mob');";

if(mysqli_query($con, $query)){
	session_start();
	$id = mysqli_insert_id($con);
	$_SESSION["id"] = $id;
	
	echo '<script>window.open("index.php", "_self");</script>';
}
?>