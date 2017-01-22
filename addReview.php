<?php
session_start();
include "dbconnection.php";

//var_dump($_POST);
$id=$_SESSION["id"];
$review = $_POST["review"];
$product = $_GET["id"];

$query = "INSERT INTO `reviews` (`user`, `product`, `review`) VALUES ('$id', '$product', '$review');";

if(mysqli_query($con, $query)){
	echo '<script>window.open("product-details.php?id='. $product.'", "_self");</script>';
}
?>