<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Students Shoppers</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>
	<?php include "header.php"; ?>
	
	<section id="form" style="margin-top:50px"><!--form-->
		<div class="container">
			<div class="row" style="text-align:center">
				
				<div class="col-sm-8">
					<div class="signup-form"><!--sign up form-->
						<h2 class="title text-center">Add items</h2>
						<form action="addbook.php" method="post" enctype="multipart/form-data">
							<input required type="text" name="title" placeholder="Title"/>
							<input required type="text" name="des" placeholder="Description"/>
							<input required type="text" name="price" placeholder="price"/>
							<select required name="cat"> 
							<option selected disabled><-Select a category-></option>
							<?php
								include "dbconnection.php";
								$query = "SELECT * FROM `category`";
								$result = mysqli_query($con, $query);
								while($row=mysqli_fetch_assoc($result)){
									echo '<option value="'.$row["id"].'">'.$row["title"].'</option>';
								
								}
							?>
							</select>
							<input style="padding-top:10px;margin-top:10px" type="file" name="cover" id="cover" placeholder="Upload cover">
							<button type="submit" class="btn btn-default">Post</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	
	<?php include "footer.php"; ?>
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>