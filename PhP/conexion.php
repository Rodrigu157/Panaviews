<?php
$host = "localhost";            // Nombre del host
$usuario = "root";              // Nombre de usuario
$contraseña = ""/*"FISC2165"*/;       // Contraseña
$base_datos = "panviews";      // Nombre de la base de datos

// Crear conexión
$conexion = new mysqli($host, $usuario, $contraseña, $base_datos);

// Verificar conexión
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}


?>