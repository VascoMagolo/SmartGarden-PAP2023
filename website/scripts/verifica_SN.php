<?php

if(!$_SESSION['user']){
    header('Location:../pages/index.php');
    exit();
}