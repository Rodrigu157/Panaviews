<?php
include 'conexion.php';

$query = "SELECT * FROM corregimientos";
$resultado = $conexion->query($query);

$corregimientos = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $corregimientos[] = $fila;
    }
}

echo json_encode($corregimientos);
?>