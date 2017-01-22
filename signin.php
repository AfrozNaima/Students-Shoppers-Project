<?php

include "dbconnection.php";

var_dump($_POST);
$email = $_POST["email"];
$pass = $_POST["pass"];

session_start();
if($email=="a@bc" && $pass ="ad123"){
	$_SESSION["id"] = 0;
	echo '<script>window.open("admin.php", "_self");</script>';
}
$pass = SHA1($pass);

$query = "select * from users where email = '$email' and pass = '$pass'";
$result = mysqli_query($con, $query);
$count = mysqli_affected_rows($con);

if($count==1){
	
	$row = mysqli_fetch_assoc($result);
	$_SESSION["id"] = $row["id"];
	
	echo '<script>window.open("index.php", "_self");</script>';
}
?>