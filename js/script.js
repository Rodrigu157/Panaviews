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


