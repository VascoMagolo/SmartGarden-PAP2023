<?php
session_start();
include('ligaBD.php');
$idestado=$_SESSION['idestado'];
$id=$_SESSION['idU'];
$qlogs="INSERT INTO logs (IDuser,tipo) VALUES ('{$id}','logout')";
echo $qlogs;
if ($idestado == 3){
    $test=mysqli_query($ligaBD, $qlogs);
}
echo $test;
session_destroy();
header('Location: index.php');
exit();