
<!doctype html>
<?php include "header.html"; ?>

<h1 align="center">Search Results</h1>
<?php
	//What do you do if the column is not filled in the database?
	
	$link = connectData();
	
	$rentCheck = 0;
	$aptCheck = 0;
	
	$rent = $_GET["rent"];
	$deposit = $_GET["deposit"];
	$bedrooms = $_GET["bedrooms"];
	$bathrooms = $_GET["bathrooms"];
	
	if(isset($_GET["Pets"])){$Pets = $_GET["Pets"];}
	if(isset($_GET["Furniture"])){$Furniture = $_GET["Furniture"];}
	if(isset($_GET["Smoking"])){$Smoking = $_GET["Smoking"];}
	if(isset($_GET["Electricity"])){$Electricity = $_GET["Electricity"];}
	if(isset($_GET["Water"])){$Water = $_GET["Water"];}
	if(isset($_GET["Garbage"])){$Garbage = $_GET["Garbage"];}
	if(isset($_GET["Washer"])){$Washer = $_GET["Washer"];}
	if(isset($_GET["Parking"])){$Parking = $_GET["Parking"];}
	if(isset($_GET["Pool"])){$Pool = $_GET["Pool"];}
	if(isset($_GET["Bike"])){$Bike = $_GET["Bike"];}

	$defaultQuery = "SELECT * FROM aptdata";
	$defaultRentQuery = "SELECT DISTINCT Name FROM rent_data";
	
	$buildQuery = "SELECT * FROM aptdata WHERE "; 
	$buildRentQuery = "SELECT DISTINCT Name FROM rent_data WHERE "; 
	
	//RENT DATA FILTERS
	if($rent != ""){
		$buildRentQuery .= "Rent <= '" . $rent ."' AND ";
		$rentCheck = 1;
		}
	if($bedrooms != ""){
		$buildRentQuery .= "Bedrooms = '" . $bedrooms ."' AND ";
		$rentCheck = 1;
		}
	if($bathrooms != ""){
		$buildRentQuery .= "Bathrooms = '" . $bathrooms ."' AND ";
		$rentCheck = 1;
		}
	
		
	//APARTMENT DATA FILTERS
	if($deposit != ""){
		$buildQuery .= "Deposit <= '" . $deposit . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Pets"])){
		$buildQuery .= "Pets = '" . $Pets . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Furniture"])){
		$buildQuery .= "Furniture = '" . $Furniture . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Smoking"])){
		$buildQuery .= "Smoking = '" . $Smoking . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Electricity"])){
		$buildQuery .= "Electricity = '" . $Electricity . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Water"])){
		$buildQuery .= "Water = '" . $Water . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Garbage"])){
		$buildQuery .= "Garbage = '" . $Garbage . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Washer"])){
		$buildQuery .= "Washer = '" . $Washer . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Parking"])){
		$buildQuery .= "Parking = '" . $Parking . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Pool"])){
		$buildQuery .= "Pool = '" . $Pool . "' AND ";
		$aptCheck = 1;
		}
	if(isset($_GET["Bike"])){
		$buildQuery .= "Bike = '" . $Bike . "' AND ";
		$aptCheck = 1;
		}
			

	
	$buildQuery = substr($buildQuery, 0, (strlen($buildQuery) - 5));
	$buildRentQuery = substr($buildRentQuery, 0, (strlen($buildRentQuery) - 5));
		
	if($aptCheck == 0){
		$buildQuery = $defaultQuery;
	}
	if($rentCheck == 0){
		$buildRentQuery = $defaultRentQuery;
	}
	
	$query = "SELECT * FROM (" . $buildQuery. ") as t1, (" . $buildRentQuery . ") as t2 WHERE t1.Name = t2.Name";   
			  
	$result = mysqli_query($link, $query);
	echo "<br>";
	$noResult = 0;
	
?>
	
<table style = "background-color: #D8D8D8 ;" width = "100%" border = ".5">
<form action= "apartmentsPage.php" method= "get">
<?php
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
		$noResult += 1;
		echo "</td>";
		echo "</tr>";
	} 
	echo "<br>";
	
	if($noResult == 0){
		echo "<center>Sorry, but we could not find any properties that matched your search criteria.</center><br>";
		echo '<center><img src="BeaverNoResult.png" alt="Insert Logo Here" name="Insert_logo" width="300" height="300" id="Insert_logo" display: block;" border="0" /><center>';
	}
	
	mysqli_close($link);
?>
</table>

<?php include "footer.html"; ?>