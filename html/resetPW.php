<?php
session_start();
include('ligaBD.php');
$login = $_POST['login'];
$pass = $_POST['pass'];
$Cpass = $_POST['Cpass'];
if ($pass==$Cpass){
    $query = "UPDATE users SET pass = md5(".$pass.") WHERE login LIKE '{$login}'";
    mysqli_query($ligaBD, $query);
}
else{
    $_SESSION['naoigual'] = true;
    header('Location:confirmPW.php');
    exit();
}
header("Location:listausers.php");
?>