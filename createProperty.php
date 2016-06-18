<?php include "header.html"; ?>

<form action="createPropertyGood.php" method="get">
<h1 align="center">Rental Submission Form</h1><br>


<table border = "0">
	<tr>
		<tr><td align = "left"><h2>Rental Information</h2></td></tr>
		<td>
			<?php createAptForm(); ?>
		</td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<tr><td align = "left"><h2>Amenities</h2></td></tr>
		<td>
			<?php AmenityTableFilter(); ?>
		</td>
	</tr>
</table>

<input type="submit">
</form>

<?php include "footer.html"; ?>