<header id="header"><!--header-->
		<?php session_start(); ?>
		<script>
			function addToCart(name,price){
				var a=JSON.parse(localStorage.getItem("cart"));
				if(a==null){
					a=[];
				}
				var quantity = window.prompt("Enter quantity");
				var q = parseInt(quantity);
				//console.log(q+""+quantity);
				if(quantity==null||isNaN(q)||q<1){
					return;
				}
				a.push({name: name, quantity: q , price: price});
				localStorage.setItem("cart", JSON.stringify(a));
				window.alert("Added "+q+" "+name+" in cart.")
			}
		</script>
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.php" style="font-size:x-large;color:#fe980f"><img height="40px" src="images/books.jpg" alt="" />Students Shoppers</a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<?php if(!isset($_SESSION["id"])){ 
									echo'<li><a href="login.php"><i class="fa fa-user"></i> Sign up</a></li>';
									echo '<li><a href="login.php"><i class="fa fa-lock"></i> Login</a></li>';}
								else {
									echo '<li><a href="signout.php"><i class="fa fa-lock"></i> Log Out</a></li>';
								}?>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="index.php">Home</a></li>
								<?php if(isset($_SESSION["id"])){ 									
									if($_SESSION["id"]==0){
										echo '<li><a href="admin.php">Admin</a></li>';
										echo '<li><a href="postBook.php">Post an item</a></li>';
									} else{
									echo '<li><a href="cart.php">Cart</a></li>';
									
									}
								}
								else{
									echo '<li><a href="cart.php">Cart</a></li>';
									}
								?>
								
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" id="search" on="search()" placeholder="Search"/>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	<script>
	var wage = document.getElementById("search");
	wage.addEventListener("keydown", function (e) {
		if (e.keyCode === 13) {  //checks whether the pressed key is "Enter"
			validate(e);
		}
	});

	function validate(e) {
		var text = wage.value;
		window.open("search.php?key="+text, "_self");
	}
	</script>