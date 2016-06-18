<?php 
	session_start();
	if(isset($_SESSION['noLogin'])){
		if($_SESSION['noLogin'] == 1){
			$noLogin = 1;
		}
	}
	if(isset($_SESSION['FailedLogin'])){
		if($_SESSION['FailedLogin'] == 1){
			$failedLogin = 1;
		}
	}
	include "header.html"; 
	
?>
	<h1 align="center">Beaver Rental Login</h1>
	<p>&nbsp;</p>
	<form id="form1" name="form1" method="POST" action="LoginResult.php">
	<p><?php 
		if(isset($noLogin)){
			echo "Please login to access all the user features.";
			$_SESSION['noLogin'] = 0;
		}else if(isset($failedLogin)){
			echo "Incorrect Username or Password";
			$_SESSION['FailedLogin'] = 0;
		}
	?></p>
	<p>Login:</p>
	<p>
	<label for="Username">Username:</label>
	<input type="text" name="Username" id="Username" />
	<label for="Password"><br />
	Password:</label>
	<input type="password" name="Password" id="Password" /> 
	<input type="submit" name="Login" id="Login" value="Submit" />
	</p>
	<p><a href="#">Forgot Password or Username?</a></p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
	</form>
<?php include "footer.html"; ?>
