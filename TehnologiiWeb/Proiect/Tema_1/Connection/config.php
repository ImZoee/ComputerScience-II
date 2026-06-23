<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

define('DB_HOST', 'localhost');
define('DB_NAME', 'db_meniu');
define('DB_USER', 'Root');
define('DB_PASS', 'changeit');

$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
if (!$conn) {
    die("Eroare la conectarea la baza de date: " . mysqli_connect_error());
}
?>
