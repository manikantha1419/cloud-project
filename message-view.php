<?php
session_start();
$conn = mysqli_connect('localhost', 'root', '' , 'sms');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
if (($_SESSION["mobile"]))
 {
$mobile  = $_SESSION["mobile"];
$name  = $_SESSION["name"];
$email  = $_SESSION["email"];
$uid  = $_SESSION["uid"];
$message_id = $_SESSION["message_id"];
$keys = $_POST["keys"];
	
?>

<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>SMS</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body>
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header">
					<h1><a href="user.php">Welcome <?php echo $name; ?></a></h1>
					<nav id="nav">
						<ul>
							<li><a href="keys.php" class="button">View keys</a></li>
							<li><a href="add-member.php" class="button">Add Member</a></li>
							<li><a href="send-message.php" class="button">Send Message</a></li>
							<li><a href="view-message.php" class="button">View Message</a></li>
							<li><a href="logout.php" class="button">Logout</a></li>
						</ul>
					</nav>
				</header>

			<!-- Main -->
				<section id="main" class="container">
					<div class="row">
						<div class="12u">

							<!--Form -->
								<section class="box">
									<h3>Here is the message..!</h3>
									
<?php
$sql = "select * from members where mkey = '".$keys."' ";
$result = mysqli_query($conn,$sql) ;
$row = mysqli_fetch_assoc($result);

if($row)
{
$sql1 = "select * from message where mid = '".$message_id."' ";
$result1 = mysqli_query($conn,$sql1) ;
$row1 = mysqli_fetch_assoc($result1);

echo "<blockquote>". $row1["message"] ."</blockquote>";

/* unset($_SESSION["message_id"]); */
}
else
{

header('Location: error.html');    


}
?>





								</section>

						</div>
					</div>
					
									
				</section>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollgress.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>

<?php
 }
	else 
	{
		header('Location: error.html');    
	}
?>