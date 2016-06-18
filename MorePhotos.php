<?php include "header.html"; ?>
<h1 align="center">More Photos</h1>

<?php

	$link = connectData();
	createMorePhotosTable($link, $_SESSION['apartmentName']);

?>


<?php include "footer.html"; ?>