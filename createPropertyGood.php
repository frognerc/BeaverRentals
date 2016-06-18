
<!doctype html>
<?php include "header.html"; ?>

<h1 align="center">Good Submission</h1>

<?php
	
	$link = connectData();
		
	$PropertyName = $_GET["Name"];
	$Address = $_GET["Address"];
	$Phone = $_GET["Phone"];
	$Website = $_GET["Website"];
	$id = rand(100,1000);
	
	$Pets = $_GET["Pets"];
	$Furniture = $_GET["Furniture"];
	$Smoking = $_GET["Smoking"];
	$Electricity = $_GET["Electricity"];
	$Water = $_GET["Water"];
	$Garbage = $_GET["Garbage"];
	$Washer = $_GET["Washer"];
	$Parking = $_GET["Parking"];
	$Pool = $_GET["Pool"];
	$Bike = $_GET["Bike"];

	$Query = "INSERT INTO apttestdata . aptdata (	Name, 
													Address, 
													Website, 
													Phone, 
													Pets,
													Furniture,
													Smoking,
													Electricity,
													Garbage,
													Washer,
													Parking,
													Pool,
													Water,
													Bike,
													AptID,
													Landlord) 
				VALUES ('" . $PropertyName . "', 
						'" . $Address . "', 
						'" . $Website . "', 
						'" . $Phone . "', 
						'" . $Pets . "',
						'" . $Furniture . "',
						'" . $Smoking . "',
						'" . $Electricity . "',
						'" . $Garbage . "',
						'" . $Washer . "',
						'" . $Parking . "',
						'" . $Pool . "',
						'" . $Water . "',
						'" . $Bike . "',
						'" . $id . "',
						'" . $_SESSION['username'] . "')";
		
	mysqli_query ($link, $Query);
	
	mysqli_close($link);
	
?>
<center>Your rental property has been entered into the database. <a href="apartmentsPage.php?apartmentName=<?php echo $id ?>">Click Here</a> to view the properties page.</center>

<?php include "footer.html"; ?>