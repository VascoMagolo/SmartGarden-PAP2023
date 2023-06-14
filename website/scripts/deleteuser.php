<?php
session_start();
include('../scripts/ligaBD.php');
$id=$_GET['IDu'];
$query = "DELETE FROM users WHERE IDuser = ".$id;
mysqli_query($ligaBD, $query);
header("Location:../pages/listaAceitarU.php");
?>