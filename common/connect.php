<?php 
	$conn = mysqli_connect('localhost','root','','dlich');
	$conn->set_charset('utf8');
	function conn(){
		$conn = mysqli_connect('localhost','root','','dlich');
		$conn->set_charset('utf8');
		return $conn;
	}
?>