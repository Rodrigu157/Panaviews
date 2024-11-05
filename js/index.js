
let currentIndex = 0;
const provincias =['Bocas del Toro', 'Chiriquí', 'Veraguas', 'Herrera', 'Los Santos', 'Cocle', 'Panamá Oeste', 'Panamá', 'Colón', 'Darién']
const nombre_provincia = document.getElementById('nombre_provincia')
const carousel = document.getElementById('carousel');
const images = document.querySelectorAll('.carousel img');
const totalImages = document.querySelectorAll('.carousel img').length;
let autoplayInterval;

function updateCarousel() {
  const containerWidth = carousel.parentElement.clientWidth;
  carousel.style.width = `${containerWidth * totalImages}px`; // Establece el ancho total del carrusel
  images.forEach(image => {
    image.style.width = `${containerWidth}px`; // Cada imagen ocupa el ancho del contenedor
  });
  carousel.style.transform = `translateX(${-currentIndex * containerWidth}px)`;
  nombre_provincia.textContent = provincias[currentIndex]
}

function goToSlide(index) {
  currentIndex = (index + totalImages) % totalImages; // Asegura que el índice esté en el rango
  updateCarousel();
  resetAutoplay();
}

function previousSlide() {
  goToSlide(currentIndex - 1);
}

function nextSlide() {
  goToSlide(currentIndex + 1);
}


function startAutoplay() {
  autoplayInterval = setInterval(nextSlide, 5000); 
}
function resetAutoplay() {
  clearInterval(autoplayInterval); // Detiene el autoplay actual
  startAutoplay(); // Reinicia el autoplay
}

window.addEventListener('resize', updateCarousel);

updateCarousel()
startAutoplay();