<?php
	$id = $_GET["id"];
	
	include "dbconnection.php";
	
	$query = "delete from requests where id = '$id'";
	
	if(mysqli_query($con, $query)){
		echo '<script>window.open("admin.php", "_self");</script>';
	}
?>