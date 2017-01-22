<?php

include "dbconnection.php";

//var_dump($_POST);
$price = $_GET["b"];
$details = $_GET["a"];
session_start();
if(!isset($_SESSION["id"])){
	echo '<script>window.alert("you must log in to order");</script>';
	echo '<script>window.open("login.php", "_self");</script>';
}
$id = $_SESSION["id"];
$query = "INSERT INTO `requests` (`user`, `price`, `description`) VALUES ('$id', '$price', '$details');";
//echo $query;
if(mysqli_query($con, $query)){
	echo '<script>localStorage.removeItem("cart");</script>';
	echo '<script>window.alert("Order sent...Pay now...");</script>';
	echo '<script>window.open("index.php", "_self");</script>';
}
?>