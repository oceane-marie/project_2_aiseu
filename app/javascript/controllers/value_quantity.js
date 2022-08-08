import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["quantity"]
  connect() {
  }

  get(event) {
    event.preventDefault()
    console.log(target.value)
    this.quantityTarget.innerText.value
    this.element.submit();
}
}
