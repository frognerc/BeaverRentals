
<?php include "header.html"; ?>

<h1 align="center">Profile Updated</h1>
<?php
	$link = connectData()
	
    $username = $_SESSION['username'];
    $password = $_SESSION['password'];
    $email = $_POST["Email"];  
    $bedrooms = $_POST["Bedrooms"];
    $bathrooms = $_POST["Bathrooms"];
    $rent = $_POST["Rent"];
   
 
	if($fname != ""){
		$QueryA = "UPDATE users SET FirstName = '" . $fname . "' WHERE username = '" . $username . "' AND password = '" . $password . "'";
		mysqli_query ($link, $QueryA);}
	if($lname != ""){
		$QueryB = "UPDATE users SET LastName = '" . $lname . "' WHERE username = '" . $username . "' AND password = '" . $password . "'";
		mysqli_query ($link, $QueryB);}
	if($email != ""){
		$QueryD = "UPDATE users SET email = '" . $email . "' WHERE username = '" . $username . "' AND password = '" . $password . "'";
		mysqli_query ($link, $QueryD);}
	if($bedrooms != ""){
		$QueryE = "UPDATE users SET Bedrooms = '" . $bedrooms . "' WHERE username = '" . $username . "' AND password = '" . $password . "'";
		mysqli_query ($link, $QueryE);}
	if($bathrooms != ""){
		$QueryF = "UPDATE users SET Bathrooms = '" . $bathrooms . "' WHERE username = '" . $username . "' AND password = '" . $password . "'";
		mysqli_query ($link, $QueryF);}
	if($rent != ""){
		$QueryG = "UPDATE users SET Rent = '" . $rent . "' WHERE username = '" . $username . "' AND password = '" . $password . "'";
		mysqli_query ($link, $QueryG);}
		
	$query = "SELECT * FROM users WHERE username = '" . $username . "' AND password = '" . $password . "'";
	
	$result = mysqli_query($link, $query);
	echo "<br>";
	echo "<br>";

	$row = mysqli_fetch_array($result);
	echo "First Name: ".$row["FirstName"]."<br>"; 
	echo "Last Name: ".$row["LastName"]."<br>";
	echo "Email: ".$row["email"] . "<br>";
	echo "<br>";
	echo "Preferences: <br>";
	echo "Bedrooms: ".$row["Bedrooms"] . "<br>";
	echo "Bathrooms: ".$row["Bathrooms"] . "<br>";
	echo "Maximum Rent: ".$row["Rent"] . "<br>";	
	echo "<br>";
   
   mysqli_close($link);
?>

<?php include "footer.html"; ?>