import { Controller } from "@hotwired/stimulus"
import {loadStripe} from '@stripe/stripe-js';


// Connects to data-controller="stripe"
export default class extends Controller {
  static values = {stripePublishableKey: String, sessionId: String}

  async connect() {
    console.log(this.stripePublishableKeyValue, this.sessionIdValue)
    this.stripe = await loadStripe(this.stripePublishableKeyValue);

    };

  checkout() {
    this.stripe.redirectToCheckout({
      sessionId: this.sessionIdValue

  })}
}
