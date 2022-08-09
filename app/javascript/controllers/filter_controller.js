import { Controller } from "stimulus"

console.log('Hello')

export default class extends Controller {
  static targets = [ "list", "tempcheckbox", 'flavorcheckbox'];

  connect() {
    console.log(this.element)
    console.log(this.tempcheckboxTargets)
    console.log(this.flavorcheckboxTargets)
  }

  sortbytemp(event) {
    event.preventDefault()
    this.tempcheckboxTargets.forEach(() => {
      const url = `/?temp=${event.target.innerText}`
          console.log(event.target.innerText)
          console.log(url)
          fetch(url, { headers: { 'Accept': 'text/plain' } })
          .then(response => response.text())
          .then((data) => {
          this.listTarget.outerHTML = data;
          })
    })
  }

  sortbyflavor(event) {
    event.preventDefault()
    this.flavorcheckboxTargets.forEach(() => {
      const url = `/?flavor=${event.target.innerText}`
          console.log(event.target.innerText)
          console.log(url)
          fetch(url, { headers: { 'Accept': 'text/plain' } })
          .then(response => response.text())
          .then((data) => {
          this.listTarget.outerHTML = data;
          })
    })
  }
}
