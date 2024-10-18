<?php
include 'conexion.php';

$query = "SELECT * FROM precio";
$resultado = $conexion->query($query);

$precios = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $precios[] = $fila;
    }
}

echo json_encode($precios);
?>