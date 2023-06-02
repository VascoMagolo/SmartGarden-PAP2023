<?php
session_start();
include('ligaBD.php');
//receber a pass e o username do utilizador
$user = $_POST['log'];
$pass = $_POST['pass'];

//verificar se está banido
$qbanido = "select IDestado from users where login LIKE '{$user}' and pass = md5('{$pass}')";
$rBanido = mysqli_query($ligaBD,$qbanido);
$rowB = mysqli_fetch_row($rBanido);
$banido=$rowB[0];
$_SESSION['banido']=$banido;
if ($banido==2){
    header('Location:index.php');
    exit();
}
else{

    if(empty($_POST['log']) || empty($_POST['pass'])){
        header('Location:index.php');
    exit();
}




//query para login
$query = "select * from users where login LIKE '{$user}' and pass = md5('{$pass}')";
echo $query;
$result = mysqli_query($ligaBD,$query);
$row = mysqli_num_rows($result);

//query para receber o tipo de utilizador
$qtipo="select IDtipo from users where login LIKE '{$user}' and pass = md5('{$pass}')";
$result2 = mysqli_query($ligaBD,$qtipo);
$row2 = mysqli_fetch_row($result2);
$tipo=$row2[0];
$_SESSION['tipo'] = $tipo;

//query para receber o estado do utilizador
$qidestado="select IDestado from users where login LIKE '{$user}' and pass = md5('{$pass}')";
$resultIDestado = mysqli_query($ligaBD,$qidestado);
$rowIDestado = mysqli_fetch_row($resultIDestado);
$idestado=$rowIDestado[0];
$_SESSION['idestado'] = $idestado;

//query para receber id do user
$qid="select IDuser,nome from users where login LIKE '{$user}' and pass = md5('{$pass}')";
$resultID = mysqli_query($ligaBD,$qid);
$rowID = mysqli_fetch_row($resultID);
$id=$rowID[0];
$_SESSION['idU'] = $id;
$nome=$rowID[1];
$_SESSION['nome'] = $nome;

//query para registar logs do utilizador ao login
$qlogs="INSERT INTO logs (IDuser,tipo) VALUES ('{$id}','login')";
if ($idestado == 3){
    mysqli_query($ligaBD, $qlogs);
}
    


if ($row == 1){
    $_SESSION['user'] = $user;
    if($idestado==1){
        header('Location:waitforA.php');
        exit();
    }
    else{
        header('Location:index.php');
        exit();
    }
}else{
    $_SESSION['nao_autenticado'] = true;
    header('Location:log.php');
    exit();
}
}

?>