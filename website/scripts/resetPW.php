<?php
session_start();
include('../scripts/ligaBD.php');
$login = $_POST['login'];
$pass = $_POST['pass'];
$Cpass = $_POST['Cpass'];
if ($pass==$Cpass){
    $query = "UPDATE users SET pass = md5(".$pass.") WHERE login LIKE '{$login}'";
    mysqli_query($ligaBD, $query);
    header('Location:../pages/index.php');
}
else{
    $_SESSION['naoigual'] = true;
    header('Location:../pages/confirmPW.php');
    exit();
}
?>