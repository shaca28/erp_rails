document.addEventListener('DOMContentLoaded', function() {
  // Seleciona todos os elementos com a classe "expandable"
  const expandableItems = document.querySelectorAll('.expandable');

  // Adiciona um evento de clique a cada item "expandable"
  expandableItems.forEach(item => {
    item.addEventListener('click', () => {
      // Se o submenu estiver oculto, mostra-o; se não, oculta-o
      item.nextElementSibling.classList.toggle('show');
    });
  });
});
