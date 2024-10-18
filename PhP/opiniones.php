<?php
include 'conexion.php';

$query = "SELECT * FROM opiniones";
$resultado = $conexion->query($query);

$opiniones = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $opiniones[] = $fila;
    }
}

echo json_encode($opiniones);
?>