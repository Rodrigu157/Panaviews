<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "panaviews";

// Crear la conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Verificar si los datos están definidos para evitar errores de clave indefinida
$lugarid = isset($_POST['lugarid']) ? $_POST['lugarid'] : null;
$nombre = isset($_POST['nombre']) ? $_POST['nombre'] : null;
$descripcion = isset($_POST['descripcion']) ? $_POST['descripcion'] : null;
$provincia = isset($_POST['provincia']) ? $_POST['provincia'] : null;
$categoria = isset($_POST['categoria']) ? $_POST['categoria'] : null;
$edad = isset($_POST['edad']) ? $_POST['edad'] : null;
$precio = isset($_POST['precio']) ? $_POST['precio'] : null;
$horario = isset($_POST['horario']) ? $_POST['horario'] : null;
$telefono = isset($_POST['telefono']) ? $_POST['telefono'] : null;

// Preparar la consulta SQL para insertar los datos
$sql = "INSERT INTO lugares (lugarid, nombre, descripcion, provincia, categoria, edad, precio, horario, telefono) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

// Usar una declaración preparada para evitar inyección SQL
$stmt = $conn->prepare($sql);
$stmt->bind_param("issssidsi", $lugarid, $nombre, $descripcion, $provincia, $categoria, $edad, $precio, $horario, $telefono);

// Ejecutar la consulta y verificar si se guardó correctamente
if ($stmt->execute()) {
    echo "Lugar guardado exitosamente.";
    header("Location: dashboard.php"); // Redirige de vuelta a la página de administración
    exit();
} else {
    echo "Error al guardar el lugar: " . $stmt->error;
}

// Cerrar la conexión
$stmt->close();
$conn->close();
?>
