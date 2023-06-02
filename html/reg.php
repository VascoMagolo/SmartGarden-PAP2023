<?php
session_start();
include('ligaBD.php');

if(empty($_POST['log']) || empty($_POST['pass']) || empty($_POST['nome'])) {
	header('Location: index.php');
	exit();
}

$user = $_POST['log'];
$name = $_POST['nome'];
$pass = $_POST['pass'];

$query = "INSERT INTO users (login, nome, pass, idtipo,Idestado) VALUES ('{$user}', '{$name}', MD5('{$pass}'), 0,1)";

echo $query;

$result = mysqli_query($ligaBD, $query);

header('Location: index.php');
exit();
?>
