function obtenerCategorias() {
    fetch('categoria.php')
        .then(response => response.json())
        .then(data => {
            const categoriasList = document.getElementById('categorias-list');
            data.forEach(categoria => {
                console.log(categoria)
                const li = document.createElement('li');
                li.textContent = categoria.nombre;
                categoriasList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener categorías:', error));
}

function obtenerCorregimientos() {
    fetch('corregimientos.php')
        .then(response => response.json())
        .then(data => {
            const corregimientosList = document.getElementById('corregimientos-list');
            data.forEach(corregimiento => {
                const li = document.createElement('li');
                li.textContent = corregimiento.nombre;
                corregimientosList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener corregimientos:', error));
}

function obtenerDistritos() {
    fetch('distrito.php')
        .then(response => response.json())
        .then(data => {
            const distritosList = document.getElementById('distritos-list');
            data.forEach(distrito => {
                const li = document.createElement('li');
                li.textContent = distrito.nombre;
                distritosList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener distritos:', error));
}

function obtenerEdad() {
    fetch('edad.php')
        .then(response => response.json())
        .then(data => {
            const edadList = document.getElementById('edad-list');
            data.forEach(edad => {
                const li = document.createElement('li');
                li.textContent = edad.nombre;
                edadList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener edad:', error));
}

function obtenerEventos() {
    fetch('eventos.php')
        .then(response => response.json())
        .then(data => {
            const eventosList = document.getElementById('eventos-list');
            data.forEach(evento => {
                const li = document.createElement('li');
                li.textContent = evento.nombre;
                eventosList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener eventos:', error));
}

function obtenerLugares() {
    fetch('lugares.php')
        .then(response => response.json())
        .then(data => {
            const lugaresList = document.getElementById('lugares-list');
            data.forEach(lugar => {
                const li = document.createElement('li');
                li.textContent = lugar.nombre;
                lugaresList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener lugares:', error));
}

function obtenerOpiniones() {
    fetch('opiniones.php')
        .then(response => response.json())
        .then(data => {
            const opinionesList = document.getElementById('opiniones-list');
            data.forEach(opinion => {
                const li = document.createElement('li');
                li.textContent = opinion.comentario;
                opinionesList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener opiniones:', error));
}

function obtenerPrecios() {
    fetch('precio.php')
        .then(response => response.json())
        .then(data => {
            const precioList = document.getElementById('precio-list');
            data.forEach(precio => {
                const li = document.createElement('li');
                li.textContent = precio.nombre;
                precioList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener precios:', error));
}

function obtenerProvincias() {
    fetch('provincia.php')
        .then(response => response.json())
        .then(data => {
            const provinciaList = document.getElementById('provincia-list');
            data.forEach(provincia => {
                const li = document.createElement('li');
                li.textContent = provincia.nombre;
                provinciaList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener provincias:', error));
}

function obtenerRestaurantes() {
    fetch('restaurante.php')
        .then(response => response.json())
        .then(data => {
            const restauranteList = document.getElementById('restaurante-list');
            data.forEach(restaurante => {
                const li = document.createElement('li');
                li.textContent = restaurante.nombre;
                restauranteList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener restaurantes:', error));
}

function obtenerTipos() {
    fetch('tipo.php')
        .then(response => response.json())
        .then(data => {
            const tipoList = document.getElementById('tipo-list');
            data.forEach(tipo => {
                const li = document.createElement('li');
                li.textContent = tipo.nombre;
                tipoList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener tipos:', error));
}

function obtenerUsuarios() {
    fetch('user.php')
        .then(response => response.json())
        .then(data => {
            const userList = document.getElementById('user-list');
            data.forEach(user => {
                const li = document.createElement('li');
                li.textContent = user.username;
                userList.appendChild(li);
            });
        })
        .catch(error => console.error('Error al obtener usuarios:', error));
}

// Llamar a las funciones para obtener los datos al cargar la página
obtenerCategorias();
obtenerCorregimientos();
obtenerDistritos();
obtenerEdad();
obtenerEventos();
obtenerLugares();
obtenerOpiniones();
obtenerPrecios();
obtenerProvincias();
obtenerRestaurantes();
obtenerTipos();
obtenerUsuarios();
