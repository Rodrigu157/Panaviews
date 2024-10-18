const getScrollBarWidth = () => innerWidth - document.documentElement.clientWidth
document.documentElement.style.setProperty('--scrollbar-width', getScrollBarWidth())