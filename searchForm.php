<?php include "header.html"; ?>

<form action="searchResult.php" method="get">
<h1 align="center">Property Search</h1>

<center>
<table border = "0">
	<tr>
		<tr><td align = "left"><center><h2>Cost and Room Filter</h2></center></td></tr>
		<td>
			<?php numberTableFilter (); ?>
		</td>
	</tr>
	<tr><td><br></td></tr>
	<tr>
		<tr><td align = "left"><center><h2>Amenity Filter</h2></center></td></tr>
		<td>
			<?php AmenityTableFilter (); ?>
		</td>
	</tr>
</table>

<br>

<input type="submit">
</center>
</form>

<?php include "footer.html"; ?>