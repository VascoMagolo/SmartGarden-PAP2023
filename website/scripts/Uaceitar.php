<?php
session_start();
include('../scripts/ligaBD.php');
$id=$_GET['IDu'];
$query = "UPDATE users SET IDestado = 3,IDtipo = 3 WHERE IDuser = ".$id;
echo $query;
mysqli_query($ligaBD, $query);
header("Location:../pages/listausers.php");
?>