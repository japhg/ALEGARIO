<?php
$localhost = "localhost";
$user = "root";
$pass = "";
$database = "hospital";

$con1 = mysqli_connect($localhost, $user, $pass, $database);
if(!$con1){
    echo "Failed to connect";
    die();
}