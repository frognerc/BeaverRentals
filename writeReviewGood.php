
<?php include "header.html"; ?>

<h1 align="center">Review Submitted</h1>
<?php
	
	$link = connectData();
	
	$username = $_SESSION['username'];
	$aptName = $_SESSION['apartmentName'];
	$review = $_GET["Review"];
	$date = date("F j, Y");
	$sqldate = date("Ymj");
 
	if($review != ""){
		$QueryA = "INSERT INTO apttestdata . reviews (Name, Review, User, Date, DatePrint) VALUES ('" . $aptName . "', '" . $review . "', '" . $username . "', '" . $sqldate . "', '" . $date . "')";
		mysqli_query ($link, $QueryA);
	}
	
	
   
   mysqli_close($link);
?>
Good Submission
<?php include "footer.html"; ?>