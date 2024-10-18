<?php
include 'conexion.php';

$query = "SELECT * FROM restaurante";
$resultado = $conexion->query($query);

$restaurantes = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $restaurantes[] = $fila;
    }
}

echo json_encode($restaurantes);
?>