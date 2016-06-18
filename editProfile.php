<?php 

	session_start();
	if(isset($_SESSION['username'])){

	} else{
		$_SESSION['noLogin'] = 1;
		header("Location: LoginPage.php");
		exit();
	}

	include "header.html"; 
?>

<form action="editProfileGood.php" method="post">
<h1 align="center">Edit Profile</h1> <br><br>

<form action="UpdatePersonGood.php" method="get">
Please enter your username and password, fill out the fields you wish to change and hit submit.<br>

Email: <input type="text" name="Email"><br><br>
Preferences: <br>
Bedrooms: <input type="textbox" name="Bedrooms"><br>
Bathrooms: <input type="textbox" name="Bathrooms"><br>
Maximum Rent: <input type="textbox" name="Rent"><br>

<input type="submit">
</form>

<?php include "footer.html"; ?>