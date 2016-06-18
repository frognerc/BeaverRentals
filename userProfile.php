
<!doctype html>
<?php 

	session_start();
	if(isset($_SESSION['username'])){

	} else{
		$_SESSION['noLogin'] = 1;
		header("Location: LoginPage.php");
		exit();
	}

include "header.html"; ?>

<h1 align="center">My Profile</h1>
<?php
		
		$user = $_SESSION['username'];
		$userpassword = $_SESSION['password'];
		
		$link = connectData();
		$blank = "";
		
		$rentCheck = 0;
		$aptCheck = 0;
		
		$query = "SELECT * FROM users WHERE username = '" . $user ."' AND password =  '" . $userpassword ."'";

		$result = mysqli_query($link, $query);
		$row = mysqli_fetch_array($result);
		
		echo "First Name: ".$row["FirstName"]."<br>"; 
		echo "Last Name: ".$row["LastName"]."<br>";
		echo "Email: ".$row["email"] . "<br>";
		echo "<br>";
		if($row["type"] == "student"){
			echo "Preferences: <br>";
			echo "Bedrooms: ".$row["Bedrooms"] . "<br>";
			echo "Bathrooms: ".$row["Bathrooms"] . "<br>";
			echo "Maximum Rent: ".$row["Rent"] . "";	
		}else{
			$query = "SELECT * FROM aptdata WHERE Landlord = '" . $user ."'"; 
			$result = mysqli_query($link, $query);
		?>
	<a href="DeleteAcc.php">Delete Account</a><br><br><br>
	<h3>My Properties</h3>
	<table style = "background-color: #D8D8D8 ;" width = "100%" border = ".5">
	<form action= "apartmentsPage.php" method= "get">
<?php
	$results = 0;
	while($row = mysqli_fetch_array($result)) { 
		echo "<tr>";
		echo "<td>";
		echo "Name: <strong>".$row["Name"]."</strong>"; 
		echo "<br>";
		echo "Address: ".$row["Address"]." ";
		echo "<br>";
		echo "Phone: ".$row["Phone"] . "";
		echo "<br>";
		echo "<br>";
		
		echo "</td>";
		echo "<td>";
		
		$pictureQuery = "SELECT * FROM aptimages WHERE Name = '" . $row["Name"] . "'";
		$resultPicture = mysqli_query($link, $pictureQuery); 
		
		if($rowP = mysqli_fetch_array($resultPicture)){
			echo '<center><img src= aptImages/' . $rowP["ImagePath"] . ' style="width:128px;height:128px"></center>';
		}else{
			echo "No Picture";
		}
		echo "</td>";
		
		echo "<td>";
		echo "<center> 
			<button type="."submit"." name="."apartmentName"." value=".$row["AptID"]."> Read More </button>
			</center>";
		echo "</td>";
		echo "</tr>";
		$results += 1;
	}
	if($results == 0){
		echo "No properties.";
		}
		}
		
		mysqli_close($link);
?>
</table>


<?php include "footer.html"; ?>