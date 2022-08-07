document.addEventListener('turbolinks:load', () => {

const quantity = document.getElementById('quantity')
const qPLus = document.getElementById('plus')
const qMinus = document.getElementById('minus')
const price = document.getElementById('price')

  qPLus.addEventListener('click', () => {
    newQuantityPlus =  parseInt(quantity.innerText) + 1;
    quantity.innerText = newQuantityPlus;
    // newPricePlus = parseInt(quantity.innerText) * 1.20
    // price.innerText = newPricePlus.toFixed(2)
  })

  qMinus.addEventListener('click', () => {
    newQuantityMinus = parseInt(quantity.innerText) - 1;
    if (quantity.innerText >= 1) {
      quantity.innerText = newQuantityMinus;
    } else {
      quantity.innerText = '1';
    }
     // newPriceMinus = parseInt(quantity.innerText) / 1.20
  // if (newQuantityMinus <= 0) {
  //   price.innerText = '0'
  // } else {
  //   price.innerText = newPriceMinus.toFixed(2)
  // }
  })
})
