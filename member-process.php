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
$id = $_POST["member"];
$uid  = $_SESSION["uid"];
echo $id;
$sql = "select * from users where uid = '".$id."' ";
$result = mysqli_query($conn,$sql) ;
$row = mysqli_fetch_assoc($result);
$key = rand(1000,9999);
$mname1 = $name;
$mname2 = $row['name'];
$sql1 = "INSERT INTO members(uid,mname_from,mname_to,mkey)  VALUES ('$uid','$mname1','$mname2','$key')";
if (mysqli_query($conn, $sql1)) {
   echo "successfull: " . header('Location: user.php');
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

 }
else
{

header('Location: error.html');   

}


?>