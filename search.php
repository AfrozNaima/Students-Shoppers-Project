
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
	?>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<?php
								include "dbconnection.php";
								$query = "SELECT * FROM `category`";
								$result = mysqli_query($con, $query);
								while($row=mysqli_fetch_assoc($result)){
									echo '<div class="panel panel-default">';
									echo '<div class="panel-heading">';
									echo '<h4 class="panel-title"><a href="index.php?cat='.$row["id"].'">'.$row["title"].'</a></h4>';
									echo '</div></div>';
								}
							?>
						</div><!--/category-products-->
						
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<?php 
						
						echo '<h2 class="title text-center">Search result</h2><div class="row">';
						$query = "SELECT * FROM item ";

						if(isset($_GET["key"])){
							$cat = $_GET["key"];
							$query = $query . "where title like '%$cat%' ";
						}
						$query = $query . "order by date desc limit 9";
                        //echo $query;
						$result = mysqli_query($con, $query);
						while($row=mysqli_fetch_assoc($result)){?>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="<?php echo $row["cover"];?>" alt="" />
											<h2><?php echo $row["price"]."tk";?></h2>
											<p><?php echo $row["title"];?></p>
											<a href="product-details.php?id=<?php echo $row["id"];?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Details</a>
											<?php if(isset($_SESSION["id"])){if($_SESSION["id"]==0){?><a href="product-delete.php?id=<?php echo $row["id"];?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Delete</a><?php }} else{ ?>
											<a href="javascript:void(0)" onclick="<?php echo 'addToCart(\''.$row["title"].'\','.$row["price"].')' ?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a><?php }?>
										</div>
								</div>
							</div>
						</div>
						<?php } ?>
						</div>
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