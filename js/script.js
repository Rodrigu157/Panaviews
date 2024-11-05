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

let currentSlide = 0;

function updateCarousel() {
    const carouselTrack = document.querySelector('.carousel-track');
    const totalImages = document.querySelectorAll('.carousel-image').length;
    
    // Calcula el número total de "slides" (grupos de dos imágenes)
    const totalSlides = Math.ceil(totalImages);

    // Calcula el desplazamiento en porcentaje, multiplicado por el índice del slide actual
    carouselTrack.style.transform = `translateX(-${currentSlide * 100}%)`;
}

function nextSlide() {
    const totalImages = document.querySelectorAll('.carousel-image').length;
    const totalSlides = Math.ceil(totalImages);

    if (currentSlide < totalSlides - 1) {
        currentSlide++;
        updateCarousel();
    }else{
        currentSlide = 0;
        updateCarousel();
    }
}

function previousSlide() {
  const totalImages = document.querySelectorAll('.carousel-image').length;
  const totalSlides = Math.ceil(totalImages);
    if (currentSlide > 0) {
        currentSlide--;
        updateCarousel();
    }else{
      currentSlide = totalSlides - 1;
      updateCarousel();
  }
}