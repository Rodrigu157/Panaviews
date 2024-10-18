<?php
include 'conexion.php';

$query = "SELECT * FROM eventos";
$resultado = $conexion->query($query);

$eventos = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $eventos[] = $fila;
    }
}

echo json_encode($eventos);
?>