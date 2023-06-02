<?php
session_start();
include('ligaBD.php');
$id=$_GET['id'];
$query = "UPDATE users SET IDestado = 2,IDtipo = 3 WHERE IDuser = ".$id;
mysqli_query($ligaBD, $query);
header("Location:listausers.php");
?>