import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Mais de 800 especialistas para te ajudar", "Presencial ou online: a consulta do jeito que você quer"],
      typeSpeed: 80,
      loop: true
    });
  }
}
