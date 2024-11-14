<?php
$servername = "localhost";  // Dirección del servidor (usualmente localhost)
$username = "root";         // Nombre de usuario para la base de datos
$password = "";             // Contraseña para el usuario de la base de datos
$dbname = "panaviews";      // Nombre de la base de datos

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Comprobar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
