<?php
	$id = $_GET["id"];
	session_start();
	
	include "dbconnection.php";
	
	$query = "delete from item where id = '$id'";
	
	if(mysqli_query($con, $query)){
		if($_SESSION["id"]!=0) echo '<script>window.open("myposts.php", "_self");</script>';
		else echo '<script>window.open("admin.php", "_self");</script>';
	}
?>