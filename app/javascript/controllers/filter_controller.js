import { Controller } from "stimulus"

console.log('Hello')

export default class extends Controller {
  static targets = [ "list", "tempcheckbox"];

  connect(){
    console.log(this.tempcheckboxTargets)
    console.log(this.listTarget)
  }

  sortbytemp(event) {
    event.preventDefault()
    console.log('Hello World')

    this.tempcheckboxTargets.forEach((checkboxTarget) => {
    const url = `/items/${checkboxTarget.value}`
      fetch(url, { headers: { 'Accept': 'text/plain' } })
        .then(response => response.text())
        .then((data) => {
        this.listTarget.outerHTML = data;
      })
    })
  }
}
