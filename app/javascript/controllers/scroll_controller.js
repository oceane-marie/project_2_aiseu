
const btnScroll = document.getElementById('btn-scroll')

btnScroll.addEventListener('click', (e)  => {
  e.preventDefault();
  document.documentElement.scrollTop = 300;
});
