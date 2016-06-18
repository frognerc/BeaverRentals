<?php include "header.html"; ?>

<p>Are you sure you want to delete your account? Press the button to delete your account:</p>

<form action="http://oregonstate.edu/tools/formmail.php" method="post">
<input type="hidden" name="recipient" value= <?php echo $_SESSION['email']  ?> />
<input type="hidden" name="subject" value="Beaver Rentals Account Deleted" />
<input type="hidden" name="redirect" value="http://localhost/BeaverRentals/DeleteAccGood.php" />

	
	<label for="message"></label>
	<input type="hidden" id="message" name="message" value="Your account has now been deleted. Thank you for using our website!" />
	
	<label for="email"></label>
	<input type="hidden" id="email" name="email" value="BeaverRentals@oregonstate.edu" />
	
	<br>
	<label for="submit"></label>
	<input accesskey="s" tabindex="14" name="submit" id="submit" type="submit" value="Delete Account" />

</form>

<?php include "footer.html"; ?>


