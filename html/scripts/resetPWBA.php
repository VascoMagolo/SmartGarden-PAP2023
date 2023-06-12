<?php
session_start();
include('../scripts/ligaBD.php');
$id=$_GET['id'];
$query = "UPDATE users SET pass = md5('0000') WHERE IDuser = ".$id;
mysqli_query($ligaBD, $query);
header("Location:../pages/listausers.php");
?>