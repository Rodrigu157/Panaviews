<?php
include 'conexion.php';

$query = "SELECT * FROM distrito";
$resultado = $conexion->query($query);

$distritos = array();
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $distritos[] = $fila;
    }
}

echo json_encode($distritos);
?>