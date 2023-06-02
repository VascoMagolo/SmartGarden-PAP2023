<?php

define ("DB_HOST", "localhost") ;
define ("DB_USER", "j65crs1a") ;
define ("DB_PASSWORD", "qg,61o?@48@h") ;
define ("DB_DATABASE", "j65crs1a_smart");
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE) ;
if ($conn -> connect_error)
{
    echo "Failure";
    die("Connection failed : " .$conn -> connect_error);
}
else {
    echo "Connected successfully ";
}

?>