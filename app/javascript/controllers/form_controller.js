import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["form"]

  display(event) {
    event.target.innerText = (event.target.innerText === "Add a plant" ? "Hide Form" : "Add a Plant");
    this.formTarget.classList.toggle("d-none");
  }
}
