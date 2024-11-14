<?php
session_start();
include('db.php');  // Asegúrate de tener tu archivo de conexión a la base de datos

// Verificar si se ha enviado el formulario de login
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $usuario = $_POST['usuario'];  // El nombre de usuario ingresado
    $contrasena = $_POST['contrasena'];  // La contraseña ingresada
    // Mostrar la contraseña ingresada (para depuración)
     echo "Contraseña ingresada: " . htmlspecialchars($contrasena);

    
    // Buscar al usuario en la base de datos
    $sql = "SELECT * FROM user WHERE usuario = '$usuario'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();  // Obtener los datos del usuario

        // Comparar la contraseña ingresada con el hash almacenado en la base de datos
        var_dump($row['contrasena']); // Muestra el hash en la base de datos
        var_dump(password_verify($contrasena, $row['contrasena'])); // Muestra true o false
        if (password_verify($contrasena, $row['contrasena'])) {
            // Contraseña correcta, iniciar sesión
            $_SESSION['user_id'] = $row['user_id'];  // Guardar el ID del usuario en la sesión
            $_SESSION['usuario'] = $row['usuario'];  // Guardar el nombre de usuario en la sesión
            header("Location: dashboard.php");  // Redirigir a la página principal
            exit();  // Detener el script
        } else {
            echo "Contraseña incorrecta";
                    }
    } else {
        echo "Usuario no encontrado";
    }
}
?>

<!-- Formulario de login (HTML) -->
<form method="POST" action="contra.php">
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login de Panaview</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #4CAF50;
        }
        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }
        label {
            font-size: 18px;
            color: #333;
        }
        input[type="text"], input[type="password"] {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 200px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Login de Panaview</h1>
    <div class="login-container">
        <form action="login.php" method="POST">
            <div>
                <label for="usuario">Usuario:</label>
                <input type="text" id="usuario" name="usuario" required>
            </div>
            <div>
                <label for="contrasena">Contraseña:</label>
                <input type="password" id="contrasena" name="contrasena" required>
            </div>
            <button type="submit">Iniciar sesión</button>
        </form>
    </div>
</body>
</html>

</form>
