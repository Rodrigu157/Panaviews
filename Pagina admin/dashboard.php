<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administración de Panaview</title>
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
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            max-width: 400px;
            width: 100%;
        }
        label {
            font-size: 16px;
            color: #333;
            display: block;
            margin-top: 10px;
            text-align: left;
        }
        input[type="text"], input[type="number"], input[type="tel"], textarea, select {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 100%;
            box-sizing: border-box;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 20px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Administración de Panaview</h1>
    <div class="form-container">
        <form action="guardar_lugar.php" method="POST">
            <label for="lugarid">ID del Lugar:</label>
            <input type="text" id="lugarid" name="lugarid" required>

            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>

            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" rows="4" required></textarea>

            <label for="provincia">Provincia:</label>
            <input type="text" id="provincia" name="provincia" required>

            <label for="categoria">Categoría:</label>
            <select id="categoria" name="categoria" required>
                <option value="cultural">Cultural</option>
                <option value="natural">Natural</option>
                <option value="histórico">Histórico</option>
                <option value="recreativo">Recreativo</option>
            </select>

            <label for="edad">Edad Recomendada:</label>
            <input type="number" id="edad" name="edad" min="0" required>

            <label for="precio">Precio:</label>
            <input type="number" id="precio" name="precio" min="0" step="0.01" required>

            <label for="horario">Horario:</label>
            <input type="text" id="horario" name="horario" required>

            <label for="telefono">Teléfono:</label>
            <input type="tel" id="telefono" name="telefono" required>

            <button type="submit">Guardar Lugar</button>
        </form>
    </div>
</body>
</html>
