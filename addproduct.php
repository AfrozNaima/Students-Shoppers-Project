<?php
session_start();
include "dbconnection.php";

var_dump($_POST);
$id=$_SESSION["id"];
$title = $_POST["title"];
$author = $_POST["des"];
$price = $_POST["price"];
if(isset($_POST["cat"])){
	$cat = $_POST["cat"];
}
else{
	$cat = 0;
}

$target_file = "images/" . $id . date("H-i-s") . basename($_FILES["cover"]["name"]);

echo $target_file;

move_uploaded_file($_FILES["cover"]["tmp_name"], $target_file);

$query = "INSERT INTO `item` (`title`, `description`, `category`, `price`, `cover`) VALUES ('$title', '$author', '$cat', '$price', '$target_file');";

if(mysqli_query($con, $query)){
	echo '<script>window.open("index.php", "_self");</script>';
}
?>