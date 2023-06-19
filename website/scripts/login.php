<?php
session_start();
include('../scripts/ligaBD.php');

//receber a pass e o username do utilizador
$user = $_POST['log'];
$pass = $_POST['pass'];

$query = "select * from users where login LIKE '{$user}' and pass = md5('{$pass}')";
echo $query;
$result = mysqli_query($ligaBD,$query);
$row = mysqli_num_rows($result);

if ($row == 1){
    $id=$row[0];
    $_SESSION['idU'] = $id;
    $nome=$row[3];
    $_SESSION['nome'] = $nome;
    $tipo=$row[5];
    $idestado=$row[6];
    $_SESSION['tipo'] = $tipo;
    $_SESSION['idestado'] = $idestado;
    $_SESSION['user'] = $user;
    if($idestado==1){
        header('Location:../pages/waitforA.php');
        exit();
    }
    elseif ($idestado==2){
        $_SESSION['banido']=1;
        if(empty($_POST['log']) || empty($_POST['pass'])){
            header('Location:../pages/index.php');
        exit();
    }
    else{
        //query para registar logs do utilizador ao login
        $qlogs="INSERT INTO logs (IDuser,tipo) VALUES ('{$id}','login')";
        if ($idestado == 3){
            mysqli_query($ligaBD, $qlogs);
        }
        header('Location:../pages/index.php');
        exit();
    }
}else{
    $_SESSION['nao_autenticado'] = true;
    header('Location:../pages/log.php');
    exit();
}
}
?>