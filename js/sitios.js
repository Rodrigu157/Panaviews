let totalImages = 0
function obtenerCategorias() {
    fetch('http://localhost/proyectos/panaviews/PhP/categoria.php')
        .then(response => response.json())
        .then(data => {
            const categoriasContainer = document.getElementById('carousel');
            data.forEach(categoria => {
                const div = document.createElement('div')
                div.classList.add('carousel-box')
                div.id = categoria.categoria_id

                const h3 = document.createElement('h3')
                h3.textContent = categoria.nombre
                div.appendChild(h3)
                categoriasContainer.appendChild(div)

                totalImages++
                
            });
        })
        .catch(error => console.error('Error al obtener categorías:', error));
}
obtenerCategorias()

let currentIndex = 0;

const carousel = document.getElementById('carousel');


function updateCarousel() {
const images = document.querySelectorAll('.carousel .carousel-box');
  const containerWidth = carousel.parentElement.clientWidth;
  carousel.style.width = `${containerWidth * totalImages}px`; // Establece el ancho total del carrusel
  images.forEach(image => {
    image.style.width = `${containerWidth}px`; // Cada imagen ocupa el ancho del contenedor
  });
  carousel.style.transform = `translateX(${-currentIndex * containerWidth}px)`;
}

function goToSlide(index) {
  currentIndex = (index + totalImages) % totalImages; // Asegura que el índice esté en el rango
  updateCarousel();
}

function previousSlide() {
  goToSlide(currentIndex - 1);
}

function nextSlide() {
  goToSlide(currentIndex + 1);
}
window.addEventListener('resize', updateCarousel);

const openModalBtn = document.getElementById('openModalBtn');
const closeModalBtn = document.getElementById('closeModalBtn');
const modalOverlay = document.getElementById('modalOverlay');

// Mostrar el modal
openModalBtn.addEventListener('click', () => {
    modalOverlay.style.display = 'flex';
    body.classList.add('no-scroll');
});

// Ocultar el modal
closeModalBtn.addEventListener('click', () => {
    modalOverlay.style.display = 'none';
    body.classList.remove('no-scroll');
});

// Cerrar el modal al hacer clic en el fondo
modalOverlay.addEventListener('click', (event) => {
    if (event.target === modalOverlay) {
        modalOverlay.style.display = 'none';
        body.classList.remove('no-scroll');
    }
});