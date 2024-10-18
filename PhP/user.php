<?php
include 'conexion.php';

$query = "SELECT * FROM user";
$resultado = $conexion->query($query);

$usuarios = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $usuarios[] = $fila;
    }
}

echo json_encode($usuarios);
?>