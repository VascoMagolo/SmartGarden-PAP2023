<?php
session_start();
include('ligaBD.php');
$id=$_GET['IDu'];
$query = "UPDATE users SET IDestado = 3,IDtipo = 3 WHERE IDuser = ".$id;
echo $query;
mysqli_query($ligaBD, $query);
header("Location:listausers.php");
?>