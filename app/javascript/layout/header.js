{
  document.addEventListener("turbo:load", function() {
    const sideMenu = document.getElementById('sideMenu');
    const sideMenuOpenBtn = document.getElementById('sideMenuOpenBtn');
    const sideMenuCloseBtn = document.getElementById('sideMenuCloseBtn');
    
    sideMenuOpenBtn.addEventListener('click', () => {
      sideMenu.classList.remove('hidden')
    });

    sideMenuCloseBtn.addEventListener('click', () => {
      sideMenu.classList.add('hidden')
    });
  })
}