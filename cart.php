
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
					<h3>Cart <span id="items">(0)</span></h3>
                    <table style="width:80%" class="table table-bordered">
                        <thead>
                            <th>Item</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </thead>
                        <tbody id="cart">
						</tbody>
                        <tfoot>
                            <td colspan="3">Total Amount</td>
                            <td id="bill"></td>
                            <td></td>
                        </tfoot>
                    </table>
					<a href="index.php?" class="btn btn-default add-to-cart">Continue Shopping</a>
                    <button onclick="order()" class="btn btn-default add-to-cart">Place Order</button>
					
					
				</div>
			</div>
		</div>
	</section>
	
	<?php include "footer.php"; ?>
	<script>
    function cart(){
        var items=JSON.parse(localStorage.getItem("cart"));
        var table = document.getElementById("cart");
        var cart = "";
        var bill = 0;
        document.getElementById("items").innerHTML = "("+items.length+")";
        for(var i=0;i<items.length;i++){
            cart+="<tr>";
            cart+="<td>"+items[i].name+"</td>";
            cart+="<td>"+items[i].price+"</td>";
            cart+="<td>"+items[i].quantity+"</td>";
            var total = items[i].price*items[i].quantity;
            bill+=total;
            cart+="<td>"+total+"</td>";
            cart+="<td><a href='javascript:void(0)' onclick='remove("+i+")'>Remove</a></td>";
            cart+="<tr>";
        }
        document.getElementById("bill").innerHTML = bill + "tk";
        table.innerHTML = cart;
    }

    function remove(i){
        var items=JSON.parse(localStorage.getItem("cart"));
        items.splice(i,1);
        localStorage.setItem("cart", JSON.stringify(items));
        cart();
    }

    function order(){
        var items=JSON.parse(localStorage.getItem("cart"));
        var table = document.getElementById("cart");
        var cart = "";
        var bill = 0;
        for(var i=0;i<items.length;i++){
            cart+=items[i].name+"("+items[i].quantity+")<br>";
            var total = items[i].price*items[i].quantity;
            bill+=total;
        }
        window.open("request.php?a="+cart+"&b="+bill, "_self");
    }

    cart();
</script>

  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>