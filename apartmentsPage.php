<?php include "header.html"; ?>
<!DOCTYPE html> 
<?php

	$aptName = $_GET["apartmentName"];

		
	$link = connectData();

	$defaultQuery = "SELECT * FROM aptdata WHERE AptID = '" . $aptName . "'"; 
	$result = mysqli_query($link, $defaultQuery);
	$row = mysqli_fetch_array($result);
?>

<h1>
	<?php 
		echo '<center><strong>' . $row["Name"] . '</strong></center>';	
		$_SESSION['apartmentName'] = $row["Name"];
		$reviewName = $row["Name"];
	?>
</h1>
<?php echo '<center><font size = "2">(Test photos and information may not be representative of actual apartment.)</font></center>'; ?>

<table style = "background-color: #FFFFFF;" width = "100%" border = "0">
	<tr>
		<td valign = "center" align = "center">
			<?php
				$pictureQuery = "SELECT * FROM aptimages WHERE Name = '" . $reviewName . "'";
				$resultPicture = mysqli_query($link, $pictureQuery);
				$rowP = mysqli_fetch_array($resultPicture);  
						
				echo "Address: ";
				echo $row["Address"];
				echo "<br>";
					
				echo "Contact Phone: ";
				echo $row["Phone"];
				echo "<br>";
				
				echo "Landlord: ";
				if($row["Landlord"] != ''){
					echo $row["Landlord"];
				}else{
					echo "Not Specified";
				}
				echo "<br>";

				echo "Website: ";	
				if($row["Website"] == ''){
					echo "Not Available";
				}else{
					echo '<a href="' . $row["Website"] . '">' . $row["Website"] . '</a>';
				}
				echo "<br>";
					
			?>
		</td>
		<td>
			<center>
				<img src=<?php echo "aptImages/" . $rowP["ImagePath"] .""  ?> alt="UnionAPT" height = "250" width = "250">
				<br>
				<a href="MorePhotos.php">More Photos</a>
			</center>
		</td>
	</tr>
	<tr>
		<table border = "0">
			<div align = "center">
				<br>
				<h2>Map</h2>
				<?php include 'phpsqlajax_map_v3.html';	?>
			</div>
		</table>
	</tr>
	</table>
	<table style = "background-color: #FFFFFF;" width = "100%" border = "0">
		<tr>
			<table border = "0" align = "center">
				<tr>
					<td>
						<br>
						<h2 align = "center">Amenities</h2>
						<?php createAmenityTable($row); ?>
					</td>
				</tr>
			</table>
		</tr>
	</table>
	<table style = "background-color: #FFFFFF;" width = "100%" border = "0">
		<tr>
			<table border = "0" align = "center">
				<tr>
					<td>
						<br>
						<h2 align = "center">Space Types</h2>
						<?php 
							createRoomsTable($link, $reviewName); 
						?>
					</td>
				</tr>
			</table>
			<?php
				if(isset($_SESSION['username'])){
					if($row["Landlord"] == $_SESSION['username']){
						echo '<a href="addRoom.php?apartmentName='.$row['AptID'].'">Add Room</a>';
					}
				}
			?>
		</tr>
	</table>
<br>
<h2 align = "center">Reviews </h2>
<form action= "WriteReview.php" method= "get">
<?php

	if(isset($_SESSION['username'])){
		if($_SESSION['type'] == "student"){
			echo '<button type="submit" name="aptName" value = <?php echo $aptName; ?> Write a Review </button>';
		}
	}

?>
<br><br>

<table border = "0">
<?php

	$reviewQuery = "SELECT * FROM reviews WHERE  Name = '" . $reviewName  . "' ORDER BY Date DESC";
	$noResult = 0;
	$result = mysqli_query($link, $reviewQuery);
	while($row = mysqli_fetch_array($result)) { 
		echo "<tr><td>";
		echo "<strong>By ".$row["User"]." on ".$row["DatePrint"].". </strong>"; 
		echo "<br>";
		echo '<strong>Overall Experience: ' . ratingReturn($row["Rating"]) . '</strong>';
		echo "<br>";
		echo $row["Review"];
		echo "<br>";
		echo "<br>";
		$noResult += 1;
		echo "</td></tr>";
	} 
	echo "<br>";
	
	if($noResult == 0){
		echo "No reviews posted. <br>";
	}
	
	
	mysqli_close($link);
?>
</table>




<?php include "footer.html"; ?>


