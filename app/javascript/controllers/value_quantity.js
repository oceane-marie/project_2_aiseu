import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["quantity"]
  connect() {
  }

  get(event) {
    event.preventDefault()
    console.log(event.target.value)
    this.quantityTarget.innerText = event.target.value
    this.element.submit();
}
}
