
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
					<div class="product-details"><!--product-details-->
					<?php
						include "dbconnection.php";
						$query = "SELECT * FROM `item` where id = ". $_GET["id"];
						//echo $query;
						$result = mysqli_query($con, $query);
						$row=mysqli_fetch_assoc($result);
					?>
						<div class="col-sm-5">
							<div class="view-product">
								<img id="cover" src="<?php echo $row["cover"] ?>" data-zoom-image="<?php echo $row["cover"] ?>" alt="" />
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<h2><?php echo $row["title"] ?></h2>
								<p><?php echo $row["description"] ?></p>
								<span>
									<span><?php echo $row["price"] . "tk"; ?></span>
								</span>
								<br>
								
								<a href="javascript:void(0)" onclick="<?php echo 'addToCart(\''.$row["title"].'\','.$row["price"].')' ?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
							</div><!--/product-information-->
						</div>
						
						<div class="row col-md-12" style="padding-top:20px">
							<div class="features_items"><!--features_items-->
								<h2 class="title text-center">You may also buy</h2>
								<?php 
								$query = "SELECT cover,price,id,ABS(price*price-".$row["price"]*$row["price"].") as a FROM item where id!=".$row["id"]." and category=".$row["category"];
								$query = $query . " ORDER by a asc limit 4";
								$result = mysqli_query($con, $query);
								while($row=mysqli_fetch_assoc($result)){?>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
												<div class="productinfo text-center">
												<div class="productinfo text-center">
											<img style="width: 100%; height: 250px" src="<?php echo $row["cover"];?>" alt="" />
													
											
											
											<a href="product-details.php?id=<?php echo $row["id"];?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Details</a>
											
										</div>
													
													
												</div>
										</div>
									</div>
								</div>
								<?php } $id = $_GET["id"]; ?>
							</div><!--features_items-->	
						</div>
					
						<div class="row" style="padding-top:20px">
						
							<?php 
							
							if(isset($_SESSION["id"])){if($_SESSION["id"]!=0){ ?> <div class="col-md-12">
								<form action="addReview.php?id=<?php echo $id; ?>" method="POST">
									<textarea style="width:80%" name="review" placeholder="Your review..."></textarea>
									<input type="submit" value="submit" />
								</form>
								<?php }} ?>
							</div>
							<div class="col-md-12" style="padding-top:20px">
								<?php 
									$query = "SELECT users.name as name,reviews.review as review FROM reviews,users where reviews.user = users.id and reviews.product = ". $id;
									//echo $query;
									$result = mysqli_query($con, $query);
									$count = mysqli_affected_rows($con);
									if($count==0){
								?>
								<h2 class="title text-center">No Reviews</h2>
								<?php } else{
									echo "<h2 class=\"title text-center\">Other reviews</h2>";
									while($row=mysqli_fetch_assoc($result)){ ?>
										<strong><h4><?php echo $row["name"]; ?>:</strong></h4> <?php echo $row["review"]; ?>
									<?php }
								} ?>
							</div>
						</div>
						
						
						
						
						
					</div><!--/product-details-->
					
					
				</div>
			</div>
			
		</div>
	</section>
	
	<?php include "footer.php"; ?>
	

  
    <script src="js/jquery.js"></script>
	<script src="js/jquery.elevatezoom.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
	<script>$("#cover").elevateZoom({easing : true});</script>
</body>
</html>