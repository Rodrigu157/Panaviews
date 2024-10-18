<?php
include 'conexion.php';

$query = "SELECT * FROM edad";
$resultado = $conexion->query($query);

$edades = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $edades[] = $fila;
    }
}

echo json_encode($edades);
?>