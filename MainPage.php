<?php include "header.html"; ?>

    <h1 align="center">Welcome to Beaver Rentals</h1>
	<p>
		Welcome to Beaver Rentals, a website designed to help Oregon State University students easily find the perfect home for their education. This website allows students to find rental properties in the Corvallis area by using a search which allows students to specify their specific requirements for the property.
	</p>
	<p>
		To try out the search feature, <a href="searchForm.php">Click Here</a>.
	</p>
	<p>
		To go straight to an apartment’s information page simply click on the apartment on the map below.
	</p>

	
	<center>
		<h2>Property Map</h2>
	</center>
	<center>
		<?php 
			include 'phpsqlajax_map_v2.html';
		?>
	</center>
<?php include "footer.html"; ?>