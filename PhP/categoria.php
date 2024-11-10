<?php
/*include 'conexion.php';  // Incluir archivo de conexión


$query = "SELECT * FROM categoria";  // Consulta para obtener todos los registros
$resultado = $conexion->query($query);

$categorias = array();  // Array para almacenar los resultados
if ($resultado->num_rows > 0) {
    while ($fila = $resultado->fetch_assoc()) {
        $categorias[] = $fila;  // Añadir cada fila al array
    }
}

echo json_encode($categorias);  // Convertir el array a JSON

try {
    // Realizar una consulta para obtener datos de una tabla
    $stmt = $pdo->query("SELECT * FROM categoria");

    // Verificar si hay resultados y devolverlos como JSON
    if ($stmt) {
        echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
    } else {
        echo json_encode(["mensaje" => "No se encontraron datos"]);
    }

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
    */

$host = 'bdb7sbx26cvnng2lbiv9-mysql.services.clever-cloud.com';
$dbname = 'bdb7sbx26cvnng2lbiv9';
$username = 'ucyebez9xuaqeic8';
$password = 'qsng4TiRbXu0uB0vqVq5';

try {
    // Establecer la conexión PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Para manejar errores

    // Consulta para obtener los datos de la tabla
    $stmt = $pdo->query("SELECT * FROM nombre_de_tu_tabla");

    // Verificar si hay resultados y devolverlos como JSON
    if ($stmt) {
        echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
    } else {
        echo json_encode(["mensaje" => "No se encontraron datos"]);
    }

} catch (PDOException $e) {
    // Manejo de errores
    echo json_encode(["error" => $e->getMessage()]);
}
?>