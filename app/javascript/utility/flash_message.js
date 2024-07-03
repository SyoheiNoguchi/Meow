{
  document.addEventListener("turbo:load", function() {
    const flashMessage = document.getElementById('flashMessage');
    const flashCloseBtn = document.getElementById('flashCloseBtn');

    if (flashMessage) {
      flashCloseBtn.addEventListener('click', () => {
        flashMessage.classList.add('hidden')
      });
    }
  })
}