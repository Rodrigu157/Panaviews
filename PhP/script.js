function obtenerProvincias() {
    fetch('../PhP/provincia.php')
        .then(response => response.json())
        .then(data => {
            const provinciaList = document.getElementById('provincias');
            data.forEach(provincia => {
                const option = document.createElement('option');
                option.id = provincia.provincia_id;
                option.textContent = provincia.nombre;
                provinciaList.appendChild(option);
            });
        })
        .catch(error => console.error('Error al obtener provincias:', error));
}

function obtenerDistritos() {
    fetch('../PhP/distrito.php')
        .then(response => response.json())
        .then(data => {
            const distritosList = document.getElementById('distritos');
            data.forEach(distrito => {
                const option = document.createElement('option');
                option.id = distrito.distrito_id;
                option.textContent = distrito.nombre;
                distritosList.appendChild(option);
            });
        })
        .catch(error => console.error('Error al obtener distritos:', error));
}

function obtenerCorregimientos() {
    fetch('../PhP/corregimientos.php')
        .then(response => response.json())
        .then(data => {
            const corregimientosList = document.getElementById('corregimientos');
            data.forEach(corregimiento => {
                const option = document.createElement('option');
                option.id = corregimiento.corregimientos_id;
                option.textContent = corregimiento.nombre;
                corregimientosList.appendChild(option);
            });
        })
        .catch(error => console.error('Error al obtener corregimientos:', error));
}

function obtenerCategorias() {
    fetch('../PhP/categoria.php')
        .then(response => response.json())
        .then(data => {
            const categorias = document.getElementById('categorias');
            data.forEach(categoria => {
                const option = document.createElement('option');
                option.id = categoria.categoria_id;
                option.textContent = categoria.nombre;
                categorias.appendChild(option);
            });
        })
        .catch(error => console.error('Error al obtener categorías:', error));
}

function obtenerEdad() {
    fetch('../PhP/edad.php')
        .then(response => response.json())
        .then(data => {
            const edades = document.getElementById('edades');
            data.forEach(edad => {
                const option = document.createElement('option');
                option.id = edad.edad_id;
                option.textContent = edad.nombre;
                edades.appendChild(option);
            });
        })
        .catch(error => console.error('Error al obtener edad:', error));
}

function obtenerPrecios() {
    fetch('../PhP/precio.php')
        .then(response => response.json())
        .then(data => {
            const precioList = document.getElementById('precios');
            data.forEach(precio => {
                const option = document.createElement('option');
                option.id = precio.precio_id;
                option.textContent = precio.nombre;
                precioList.appendChild(option);
            });
        })
        .catch(error => console.error('Error al obtener precios:', error));
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


/*// Llamar a las funciones para obtener los datos al cargar la página
obtenerProvincias();
obtenerDistritos();
obtenerCorregimientos();

obtenerEdad();
obtenerPrecios();

obtenerCategorias();

obtenerEventos();
obtenerLugares();
obtenerOpiniones();


obtenerRestaurantes();
obtenerTipos();
obtenerUsuarios();
*/