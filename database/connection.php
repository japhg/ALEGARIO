<?php
$localhost = "localhost";
$user = "root";
$pass = "";
$database = "alegariocurehms_db";

$con = mysqli_connect($localhost, $user, $pass, $database);
if(!$con){
    echo "Failed to connect";
    die();
}