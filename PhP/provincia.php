<?php
include 'conexion.php';

$query = "SELECT * FROM provincia";
$resultado = $conexion->query($query);

$provincias = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $provincias[] = $fila;
    }
}

echo json_encode($provincias);
?>