const card = document.querySelector('.card-front');

console.log('Hello')

checkbox.addEventListener('change', () => {
  console.log('Hello World')
  if (checkbox.checked){
    console.log('In it?')
    card.classList.add('flipcard');
    console.log('Working?')
  } else {
    card.classList.remove('flipcard');
  }
});
