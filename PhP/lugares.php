<?php
include 'conexion.php';

$query = "SELECT * FROM lugares";
$resultado = $conexion->query($query);

$lugares = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $lugares[] = $fila;
    }
}

echo json_encode($lugares);
?>