<?php

session_start();
// Start XML file, create parent node

$dom = new DOMDocument("1.0");
$node = $dom->createElement("markers");
$parnode = $dom->appendChild($node);

// Opens a connection to a MySQL server

$connection = mysqli_connect("localhost","root","","data_marker") or die("Error " . mysqli_error($link)); 

// Select all the rows in the markers table

$query = "SELECT * FROM markers WHERE name = '" . $_SESSION['apartmentName']  . "'";

$result = mysqli_query($connection, $query);

header("Content-type: text/xml");

// Iterate through the rows, adding XML nodes for each

while ($row = mysqli_fetch_array($result)){
  // ADD TO XML DOCUMENT NODE
  $node = $dom->createElement("marker");
  $newnode = $parnode->appendChild($node);
  $newnode->setAttribute("name",$row['name']);
  $newnode->setAttribute("address", $row['address']);
  $newnode->setAttribute("lat", $row['lat']);
  $newnode->setAttribute("lng", $row['lng']);
  $newnode->setAttribute("type", $row['type']);
}

echo $dom->saveXML();

?>