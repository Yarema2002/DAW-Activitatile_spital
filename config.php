<?php
// Parametrii de conectare la baza de date
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'username');
define('DB_PASSWORD', 'password');
define('DB_NAME', 'database_name');

/* Încercați să vă conectați la baza de date MySQL */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Verificați conexiunea
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>
