<?php

function connectData (){
	$link = mysqli_connect("localhost","root","","apttestdata") or die("Error " . mysqli_error($link)); 
	
	return $link;
} 

function amenityArray(){
	$amenityNames = array(  "Pets Allowed",
							"Furniture Provided",
							"Smoking Allowed",
							"Electricity Included in Rent",
							"Garbage Disposal Access",
							"Washer and Dryer Access",
							"Parking Provided",
							"Community Pool",
							"Water Included in Rent",
							"Bike Lock-up Location",
						);
	return $amenityNames;
}

function createAptData(){
	$dataAmenityNames = array ( "Rental Property Name",
								"Address",
								"Contact Phone Number",
								"Website(if available)"
							);
	return $dataAmenityNames;
}

function createAptDataPostNames(){
	$dataAmenityNames = array ( "Name",
								"Address",
								"Phone",
								"Website"
							);
	return $dataAmenityNames;
}

function amenityDataArray(){
	$dataAmenityNames = array ( "Pets",
								"Furniture",
								"Smoking",
								"Electricity",
								"Garbage",
								"Washer",
								"Parking",
								"Pool",
								"Water",
								"Bike",
							);
	return $dataAmenityNames;
}

function postArrayValues(){
	$array = array ( 	"rent",
						"deposit",
						"bedrooms",
						"bathrooms",
					);
	return $array;
}

function addRoomValues(){
	$array = array ( 	"Bedrooms",
						"Bathrooms",
						"Monthly Rent",
					);
	return $array;
}

function numbersArray(){
	$array = array ( 	"Maximum Rent(Monthly)",
						"Maximum Deposit",
						"Number of Bedrooms",
						"Number of Bathrooms",
					);
	return $array;
}

function ratingReturn($rating){
	if($rating == 'p'){
		$rating = "Positive";
	}else{
		$rating = "Negative";
	}
	return $rating;
}

function createAmenityTable ($array){
	
	$amenityNames = amenityArray();
	$dataAmenityNames = amenityDataArray();
						
	echo '<table border = ".5" width = "500" align = "center">';
	$i = 0;
	while($i < 10){
		echo '<tr>';
		echo '<td>';
		echo $amenityNames[$i];
		echo '</td>';
		echo '<td>';
		echo $array[$dataAmenityNames[$i]];
		echo '</td>';
		echo '</tr>';
		$i = $i + 1;
	}
	echo '</table>';
}

function addRoomTable (){
	
	$amenityNames = addRoomValues();
	$postNames = array("Bedrooms","Bathrooms","Rent");
	echo '<table border = ".5" width = "500" align = "left">';
	$i = 0;
	
	while($i < 3){
		echo '<tr>';
		echo '<td>';
		echo $amenityNames[$i];
		echo '</td>';
		echo '<td>';
		echo '<input type="text" name="' . $postNames[$i] . '">';
		echo '</td>';
		echo '</tr>';
		$i = $i + 1;
	}
	echo '</table>';
}

function numberTableFilter (){
	
	$amenityNames = numbersArray();
	$postNames = postArrayValues();
	echo '<table border = ".5" width = "500" align = "left">';
	$i = 0;
	
	while($i < 4){
		echo '<tr>';
		echo '<td>';
		echo $amenityNames[$i];
		echo '</td>';
		echo '<td>';
		echo '<input type="text" name="' . $postNames[$i] . '">';
		echo '</td>';
		echo '</tr>';
		$i = $i + 1;
	}
	echo '</table>';
}

function createAptForm (){
	
	$amenityNames = createAptData();
	$postNames = createAptDataPostNames();
	echo '<table border = ".5" width = "500" align = "left">';
	$i = 0;
	
	while($i < 4){
		echo '<tr>';
		echo '<td>';
		echo $amenityNames[$i];
		echo '</td>';
		echo '<td>';
		echo '<input type="text" name="' . $postNames[$i] . '">';
		echo '</td>';
		echo '</tr>';
		$i = $i + 1;
	}
	echo '</table>';
}

function AmenityTableFilter (){
	
	$amenityNames = amenityArray();
	$dataAmenityNames = amenityDataArray();
						
	echo '<table border = ".5" width = "500" align = "left">';
	$i = 0;
	
	echo '<tr>';
	echo '<th>';
	echo 'Amenity';
	echo '</th>';
	echo '<th>';
	echo 'Yes';
	echo '</th>';
	echo '<th>';
	echo 'No';
	echo '</th>';
	echo '</tr>';
	
	while($i < 10){
		echo '<tr>';
		echo '<td>';
		echo $amenityNames[$i];
		echo '</td>';
		echo '<td align = "center">';
		echo '<input type="radio" name="' . $dataAmenityNames[$i] . '" value="yes">';
		echo '</td>';
		echo '<td align = "center">';
		echo '<input type="radio" name="' . $dataAmenityNames[$i] . '" value="no">';
		echo '</td>';
		echo '</tr>';
		$i = $i + 1;
	}
	echo '</table>';
}


function createRoomsTable ($link, $reviewName){
	
	$roomQuery = "SELECT * FROM rent_data WHERE Name = '" . $reviewName . "'"; 
	$resultR = mysqli_query($link, $roomQuery);
	
						
	echo '<table border = ".5" width = "600">';
	
	echo '<tr>';
	echo '<th>';
	echo 'Bedrooms';
	echo '</th>';
	echo '<th>';
	echo 'Bathrooms';
	echo '</th>';
	echo '<th>';
	echo 'Rent';
	echo '</th>';
	echo '</tr>';
		
	while($rowRoom = mysqli_fetch_array($resultR)){
		echo '<tr>';
		echo '<td align = "center">';
		echo $rowRoom['Bedrooms'];
		echo '</td>';
		echo '<td align = "center">';
		echo $rowRoom['Bathrooms'];
		echo '</td>';
		echo '<td align = "center">';
		echo '$' . $rowRoom['Rent'] . '';
		echo '</td>';
		echo '</tr>';
	}
	echo '</table>';
} 		

function createMorePhotosTable ($link, $reviewName){
	
	$pictureQuery = "SELECT * FROM aptimages WHERE Name = '" . $reviewName . "'";
	$resultPicture = mysqli_query($link, $pictureQuery); 
	
	$i = 0;
	$newRow = 1;
	echo '<table width = "100%" border = ".5">';		
	while($rowP = mysqli_fetch_array($resultPicture)){
		if($newRow == 1){
			echo '<tr>';
			$newRow = 0;
		}
		echo '<td>';
		echo '<img src= aptImages/' . $rowP["ImagePath"] . ' height = "250" width = "250">';
		echo '</td>';
		$i = $i + 1;
		if($i == 3){
			echo '</tr>';
			$newRow = 1;
			$i = 0;
		}
	}
	echo '</table>';
} 			
					
?>