<?php
session_start();
include('../scripts/ligaBD.php');

$user = $_POST['log'];
$name = $_POST['nome'];
$pass = $_POST['pass'];

$query = "INSERT INTO users (login, nome, pass, idtipo,Idestado) VALUES ('{$user}', '{$name}', MD5('{$pass}'), 0,1)";

$result = mysqli_query($ligaBD, $query);

?>