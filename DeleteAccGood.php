
<?php
	session_start();
	
	
	$link = mysqli_connect("localhost","root","","apttestdata") or die("Error " . mysqli_error($link)); 
	$Query = "DELETE FROM users 
			WHERE username = '" . $_SESSION['username'] . "' 
			AND password = '" . $_SESSION['password'] . "' 
			AND email = '" . $_SESSION['email'] . "'";
	
	
	//echo $Query;
	mysqli_query($link, $Query);	

	mysqli_close($link);
	session_destroy();
	
	include "header.html";
	
?>
<p>Your account has been deleted. Thank you for your contributions and we hope to see you again some time.</p>

<?php include "footer.html"; ?>


