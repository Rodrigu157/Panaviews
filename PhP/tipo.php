<?php
include 'conexion.php';

$query = "SELECT * FROM tipo";
$resultado = $conexion->query($query);

$tipos = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $tipos[] = $fila;
    }
}

echo json_encode($tipos);
?>