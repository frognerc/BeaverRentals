<?php 

session_start();
session_destroy();

?>


<?php
	include "header.html"; 
?>

<center>You are now logged out. Thank you.</center>
<br>

<center><button onclick="goBack()">Return to Previous Page</button></center>

<script>
function goBack() {
    window.history.back();
}
</script>


<?php
	include "footer.html";
?>
