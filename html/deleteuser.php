<?php
session_start();
include('ligaBD.php');
$id=$_GET['IDu'];
$query = "DELETE FROM users WHERE IDuser = ".$id;
mysqli_query($ligaBD, $query);
header("Location:listaAceitarU.php");
?>