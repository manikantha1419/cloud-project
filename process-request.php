<?php

session_start();
$conn = mysqli_connect('localhost', 'root', '' , 'cloud');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}




if (($_SESSION["amobile"]))
 {
$mobile  = $_SESSION["amobile"];
$name  = $_SESSION["aname"];
$email  = $_SESSION["aemail"];
$uid  = $_SESSION["aid"];

$rid = $_GET["id"];
$approve = $_GET["approve"];


if ($approve == 'yes')
	 {
$sql = "UPDATE request SET rflag='1' WHERE rid=$rid";
if (mysqli_query($conn, $sql)) {
   echo "successfull: " . header('Location: author.php');
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
	 }
else
	{
$sql = "UPDATE request SET rflag='2' WHERE rid=$rid";
if (mysqli_query($conn, $sql)) {
   echo "successfull: " . header('Location: author.php');
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
	 }




mysqli_close($conn);


 }
	else 
	{
		header('Location: error.html');    
	}



?>