import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["li", "p"]
    updateNavbar() {
      if (window.scrollY >= window.innerHeight) {
        this.element.classList.add("navbar-lewagon-white")
        this.pTarget.classList.add("nav-item-gray")
        this.pTarget.classList.remove("nav-item-white")
        this.liTarget.classList.remove("nav-link-gray")
      } else {
        this.element.classList.remove("navbar-lewagon-white")
      }
    };
  }
