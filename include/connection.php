<?php
$server = "localhost";
$user = "root"; 
$password = ""; 
$database = "hm1"; 

// Crearea conexiunii
$connect = mysqli_connect($server, $user, $password, $database);

// Verificarea conexiunii
if (!$connect) {
    die("Conexiunea a eșuat: " . mysqli_connect_error());
}

//rest cod
?>
