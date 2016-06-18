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

<form action="writeReviewGood.php" method="get">
<h1 align="center">Write Review</h1> <br><br><br>

Write a review for <?php echo $_SESSION["apartmentName"] ?>.<br>
<br>
Review <br>
<textarea class="box" rows="10" cols="75" name="Review"></textarea><br>


<input type="submit">
</form>

<?php include "footer.html"; ?>