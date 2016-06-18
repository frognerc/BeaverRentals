<!doctype html>

<?php include "header.html" ?>

<h1>Room Added</h1>
<?php
	
	$link = mysqli_connect("localhost","root","","apttestdata") or die("Error " . mysqli_error($link));
	$name = $_SESSION['apartmentName'];
	$id = $_GET['AptID'];
	$bedrooms = $_GET["Bedrooms"];
	$bathrooms = $_GET["Bathrooms"];
	$rent = $_GET["Rent"];

	$Query = "INSERT INTO apttestdata . rent_data (	Name, 
													Bedrooms, 
													Bathrooms, 
													Rent 
												   ) 
				VALUES ('" . $name . "', 
						'" . $bedrooms . "', 
						'" . $bathrooms . "', 
						'" . $rent . "'
						)";
		
	mysqli_query ($link, $Query);
	
	mysqli_close($link);
?>
<form action="apartmentsPage.php" method="get">
<?php
	echo "<button type="."submit"." name="."apartmentName"." value=".$id."> View Property </button>";
?>
	
	
<?php include "footer.html" ?>
