<?php
if(isset($_SESSION['user'])){
    header('Location:../pages/index.php');
    exit();
}