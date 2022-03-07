import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["li"]
    updateNavbar() {
      if (window.scrollY >= window.innerHeight) {
        this.element.classList.add("navbar-lewagon-white")
        this.element.classList.add("nav-link-white")
        this.element.classList.remove("nav-link-gray")
      } else {
        this.element.classList.remove("navbar-lewagon-white")
      }
    };
  }
