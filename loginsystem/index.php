<?php
	include_once 'header.php';
?>

<section class="main-container">
	<div class="main-wrapper">
		<h2>GROCERCERY DELIVERY SYSTEM</h2>
		<p>
		<?php
			if(isset($_SESSION['u_id'])){
				echo "<h3>WELCOME TO  GROCERCERY DELIVERY MANAGEMENT SYSTEM</h3><h4></h4>";
				?>
				<div class="dropdown">
				<button class="dropbtn">Take Action!</button>
				<div class="dropdown-content">
				<a href="view_product.php">View Product</a>
				<a href="Edit_Product.php">Edit Product</a>
				<a href="Add_Product.php">Add A New Product</a>
				<a href="view_orders.php">View Orders</a>
				<a href="view_alerts.php">View Alerts</a>
				</div>
				</div>
				<?php
			}
		?>
		</p>
	</div>
</section>

<?php
	include_once 'footer.php';
?>
