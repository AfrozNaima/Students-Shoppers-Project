
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
	<?php 
	include "header.php";
	if($_SESSION["id"]!=0){
		echo '<script>window.open("index.php", "_self");</script>';
	}
	
	?>
	
	<section>
		<div class="container">
			<div class="row">
				
				<div class="col-sm-12 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Requests</h2>
						<table class="table table-striped" style="text-align:center">
							<tr >
								<th style="text-align:center">Name</th>
								<th style="text-align:center">Phone</th>
								<th style="text-align:center">Description</th>
								<th style="text-align:center">Bill</th>
								<th style="text-align:center">Mark as Done</th>
							</tr>
						<?php 
						include "dbconnection.php";
						$query = "SELECT requests.id as id, users.name as name, users.mobile as phone, requests.description as description, requests.price as price FROM requests,users where users.id=requests.user";
						$result = mysqli_query($con, $query);
						while($row=mysqli_fetch_assoc($result)){?>
							<tr>
								<td><?php echo $row["name"]; ?></td>
								<td><?php echo $row["phone"]; ?></td>
								<td><?php echo $row["description"]; ?></td>
								<td><?php echo $row["price"]; ?></td>
								<td><a href='request-complete.php?id=<?php echo $row["id"]; ?>'><button >Done</button></a></td>
							</tr>
						<?php } ?>
						</table>
					</div><!--features_items-->					
				</div>
			</div>
		</div>
	</section>
	
	<?php include "footer.php"; ?>
	

  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>