<?php
// La contraseña que deseas hashear
$password = "pana4321";

// Generar el hash de la contraseña usando bcrypt (PASSWORD_DEFAULT)
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

// Mostrar el hash generado
echo "El hash de la contraseña es: " . $hashedPassword;
?>