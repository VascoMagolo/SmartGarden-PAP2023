<?php
session_start();
include('../scripts/ligaBD.php');
$id=($_POST['id']);
$user=trim($_POST['login']);
$nome=trim($_POST['name']);
if(isset($_POST['idtipo'])) {
    $tipo = $_POST['idtipo'];
} else {
    $tipo = 1;
}
if(isset($_POST['idestado'])) {
    $estado = $_POST['idestado'];
} else {
    $estado = 3;
}
$query = "UPDATE users SET login = '$user',IDtipo = '$tipo',nome = '$nome' ,IDestado = '$estado' WHERE IDuser = ".$id;
echo $query;
mysqli_query($ligaBD, $query);
header("Location:../pages/listausers.php");
?>

