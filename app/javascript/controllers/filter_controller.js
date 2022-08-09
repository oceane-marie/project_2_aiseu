import { Controller } from "stimulus"

console.log('Hello')

export default class extends Controller {
  static targets = [ "list", "tempcheckbox", 'flavorcheckbox'];

  connect() {
    console.log(this.tempcheckboxTargets)
    console.log(this.flavorcheckboxTargets)
    console.log(this.element)
  }

  sortbytemp(event) {
    event.preventDefault()
    // this.tempcheckboxTargets.forEach(() => {
      if (event.target.checked) {
        event.currentTarget.setAttribute('checked', 'checked')
        if (event.currentTarget.checked = 'checked') {
          const url = `/?temp=${event.currentTarget.value}`
          console.log(event.currentTarget.value)
          console.log(url)
          fetch(url, { headers: { 'Accept': 'text/plain' } })
          .then(response => response.text())
          .then((data) => {
          this.listTarget.outerHTML = data;
        })
        }
      }
    // })

    // this.tempcheckboxTargets.forEach((tempcheckbox) => {
    //   if (tempcheckbox.checked = 'checked') {
    //   const url = `/?temp=${tempcheckbox.value}`
    //   console.log(tempcheckbox.value)
    //   console.log(url)
    //   fetch(url, { headers: { 'Accept': 'text/plain' } })
    //     .then(response => response.text())
    //     .then((data) => {
    //     this.listTarget.outerHTML = data;
    //   })
    // }
    // })
  }

  sortbyflavor(event) {
    event.preventDefault()
    this.flavorcheckboxTargets.forEach((flavorcheckbox) => {
      if (flavorcheckbox.checked = 'checked') {
        console.log(flavorcheckbox.value)
        const url = `/?flavor=${flavorcheckbox.value}`
        console.log(url)
        fetch(url, { headers: { 'Accept': 'text/plain' } })
          .then(response => response.text())
          .then((data) => {
          this.listTarget.outerHTML = data;
        })
      }
    })
  }
}
