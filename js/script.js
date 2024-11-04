const getScrollBarWidth = () => innerWidth - document.documentElement.clientWidth
document.documentElement.style.setProperty('--scrollbar-width', getScrollBarWidth())

function toggleMenu() {
    const menu = document.getElementById('mobile-menu');
    menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
  }