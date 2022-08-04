import { Controller } from "stimulus"

console.log('Hello')

export default class extends Controller {
  static targets = [ "list", "tempcheckbox", "tempform", 'flavorform', 'flavorcheckbox'];

  sortbytemp(event) {
    event.preventDefault()
    this.tempcheckboxTargets.forEach((checkboxTarget) => {
    const url = `/?temp=${checkboxTarget.value}`
      fetch(url, { headers: { 'Accept': 'text/plain' } })
        .then(response => response.text())
        .then((data) => {
        this.listTarget.outerHTML = data;
      })
    })
  }

  sortbyflavor(event) {
    event.preventDefault()
    this.flavorcheckboxTargets.forEach((checkboxTarget) => {
      if (checkboxTarget.checked) {
        const url = `/?flavor=${checkboxTarget.value}`
        fetch(url, { headers: { 'Accept': 'text/plain' } })
          .then(response => response.text())
          .then((data) => {
          this.listTarget.outerHTML = data;
        })
      }
    })
  }
}
