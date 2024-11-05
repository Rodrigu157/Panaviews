// Variable para guardar la posición anterior del scroll
let lastScrollPosition = 0;

const getScrollBarWidth = () => innerWidth - document.documentElement.clientWidth
document.documentElement.style.setProperty('--scrollbar-width', getScrollBarWidth())

function toggleMenu() {
    const menu = document.getElementById('mobile-menu');
    menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
  }

  // Selecciona el header
const menuBar = document.getElementById('menu-bar');
const mobileMenu = document.getElementById('mobile-menu')


// Detecta el scroll en la ventana
window.addEventListener('scroll', () => {
  
  // Obtiene la posición actual del scroll
  const currentScrollPosition = window.scrollY;
  if (currentScrollPosition > lastScrollPosition && currentScrollPosition > 100) {
      // Si el usuario baja y ha desplazado más de 100px, añade la clase 'fixed'
      menuBar.classList.add('fixed');
      mobileMenu.classList.add('fixed');
      mobileMenu.style.top = '60px'
  } else if (currentScrollPosition == 0) {
      // Si el usuario sube o vuelve a la parte superior, elimina la clase 'fixed'
      menuBar.classList.remove('fixed');
      mobileMenu.classList.remove('fixed');
      mobileMenu.style.display = 'none'
  }
  
  // Actualiza la última posición del scroll
  lastScrollPosition = currentScrollPosition;
});


let currentIndex = 0;
const provincias =['Bocas del Toro', 'Chiriqui', 'Veraguas', 'Herrera', 'Los Santos', 'Cocle', 'Panama Oeste', 'Panama', 'Colon', 'Darien']
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
