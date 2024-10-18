<?php
include 'conexion.php';  // Incluir archivo de conexión

$query = "SELECT * FROM categoria";  // Consulta para obtener todos los registros
$resultado = $conexion->query($query);

$categorias = array();  // Array para almacenar los resultados
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $categorias[] = $fila;  // Añadir cada fila al array
    }
}

echo json_encode($categorias);  // Convertir el array a JSON
?>