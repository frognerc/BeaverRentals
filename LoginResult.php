<?php session_start(); ?>

<?php
	
	$link = mysqli_connect("localhost","root","","apttestdata") or die("Error " . mysqli_error($link)); 
	
	$user = $_POST["Username"];
	$userpassword = $_POST["Password"];

	$query = "SELECT * FROM users WHERE username = '" . $user ."' AND password =  '" . $userpassword ."'";

	$result = mysqli_query($link, $query);
	$row = mysqli_fetch_array($result);
	
	if($row["FirstName"] == ''){
		$_SESSION['FailedLogin'] = 1;
		header("Location: LoginPage.php");
		exit();
	}else{ 
		$_SESSION['username'] = $_POST["Username"];
		$_SESSION['password'] = $_POST["Password"];
		$_SESSION['email'] = $row["email"];
		$_SESSION['type'] = $row["type"];;
		include "header.html";
		echo "YOU ARE NOW LOGGED IN";
	}
?>

<?php include "footer.html"; ?>
