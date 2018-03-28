<?php
session_start();
$conn = mysqli_connect('localhost', 'root', '' , 'cloud');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
if (($_SESSION["amobile"]))
 {
$mobile  = $_SESSION["mobile"];
$name  = $_SESSION["aname"];
$email  = $_SESSION["aemail"];
$uid  = $_SESSION["aid"];
?>

<!DOCTYPE HTML>
<!--
	Alpha by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Privacy Preserving</title>
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
					<h1><a href="user.php">Welcome <?php echo $name;echo $uid; ?></a></h1>
					<nav id="nav">
						<ul>
							<li><a href="add-article.php" class="button">add articles</a></li>
							<li><a href="view-article.php" class="button">view article</a></li>
							<li><a href="view-request.php" class="button">request</a></li>
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

									<h3><?php echo $name;echo $uid; ?>  <em><strong> <font size="" color="#cc0033"> -You can add Article in the Privacy Preserving</font> </strong></em></h3>
									<div class="table-wrapper">
										<table class="alt">
											<thead>
												<tr>
													<th>Article Id</th>
													<th>Title</th>
													<th>Domain </th>
													<th>Keywords</th>

												</tr>
											</thead>
											<tbody>
								

					<?php 

if (($_SESSION["amobile"])) 
 {


$conn = mysqli_connect('localhost', 'root', '' , 'cloud');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
 




$sql = " SELECT * FROM article WHERE aid = '".$uid."' AND aname = '".$name."'  ";

$result = mysqli_query($conn,$sql);
/*
if (mysqli_query($conn, $sql)) {
   echo "successfull: " ;
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}


echo " <table width='100%'>
      <thead>
        <tr>
          <th>Domain</th>
          <th>Title</th>
          <th>Batch No</th>
          <th>Institute</th>
        </tr>
      </thead>
      <tbody>";
*/
while( $row = mysqli_fetch_assoc($result) ){
			$pid = $row['arid'];
            echo "<tr><td><a href='article.php?id=$pid'>". $row['arid'] ."</a></td>";
			echo "<td><a href='article.php?id=$pid'>". $row['artitle'] ."</a></td>";
			echo "<td><a href='article.php?id=$pid'>". $row['ardomain'] ."</a></td>";
			echo "<td><a href='article.php?id=$pid'>". $row['arkeywords'] ."</a></td>";
			echo "</tr>";
		  }




	  echo" </tbody>
    </table>";





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