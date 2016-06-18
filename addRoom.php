<?php include "header.html"; ?>

<form action="addRoomGood.php" method="get">
<h1 align="center">Add Space to Property</h1><br>


<table border = "0">
	<tr>
		<tr><td align = "left"><h2>Space Type</h2></td></tr>
		<td>
			<?php addRoomTable(); ?>
		</td>
	</tr>
</table>

<button type="submit" name = "AptID" value = <?php echo $_GET['apartmentName'];?>>Submit</button>
</form>

<?php include "footer.html"; ?>