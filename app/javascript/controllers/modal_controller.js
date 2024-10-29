import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["dialog"];
  
  connect() {
      console.log('controller modal')
  }

  close() {
      this.dialogTarget.close();
  }

  open() {
    this.dialogTarget.showModal();
  }
}
