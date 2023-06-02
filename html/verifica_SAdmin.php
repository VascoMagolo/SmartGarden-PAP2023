<?php

if(!(isset($_SESSION['user'])|| $_SESSION['tipo']==1)){
    header('Location:index.php');
    exit();
    
}
?>