import { Controller } from "stimulus"

console.log('Hello')

export default class extends Controller {
  static targets = [ "list", "tempcheckbox", 'flavorcheckbox'];

  sortbytemp(event) {
    event.preventDefault()

    this.tempcheckboxTargets.forEach((tempcheckboxTarget) => {
    if (tempcheckboxTarget.checked) {
      console.log('Hello if temp')
    }
      const url = `/?temp=${tempcheckboxTarget.value}`
      fetch(url, { headers: { 'Accept': 'text/plain' } })
        .then(response => response.text())
        .then((data) => {
        this.listTarget.outerHTML = data;
      })
    })
  }

  sortbyflavor(event) {
    event.preventDefault()
    this.flavorcheckboxTargets.forEach((flavorcheckboxTarget) => {
      if (flavorcheckboxTarget.checked) {
        console.log('Hello if flavor')
      }
      console.log('Ciao')
        const url = `/?flavor=${flavorcheckboxTarget.value}`
        fetch(url, { headers: { 'Accept': 'text/plain' } })
          .then(response => response.text())
          .then((data) => {
          this.listTarget.outerHTML = data;
        })
    })
  }
}
