<?php
	
	$query = htmlspecialchars($_POST['query']);
	$conn = new mysqli('localhost','root','','make');
	$conn -> query($query);
	header('Location: admin.php');
?>