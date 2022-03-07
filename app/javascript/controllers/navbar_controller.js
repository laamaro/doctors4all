import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    updateNavbar() {
      if (window.scrollY >= window.innerHeight) {
        this.element.classList.add("navbar-lewagon-white")
        this.element.classList.remove("li-navbar-white")
      } else {
        this.element.classList.remove("navbar-lewagon-white")
        this.element.classList.add("li-navbar-white")
      }
    };
  }
