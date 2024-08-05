import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["image", "dialog", "zoomedImage", "download", "share"]

  open(event) {
    event.preventDefault()

    console.log(event.target)
    this.dialogTarget.showModal()
    this.#set(event.target)
  }

  reset() {
    this.zoomedImageTarget.src = ""
    // this.downloadTarget.href = ""
    // this.shareTarget.dataset.webShareFilesValue = "";
  }

  #set(target) {
    this.zoomedImageTarget.src = target.src
    // this.downloadTarget.href = target.dataset.lightboxUrlValue;
    // this.shareTarget.dataset.webShareFilesValue = target.dataset.lightboxUrlValue;
  }
}