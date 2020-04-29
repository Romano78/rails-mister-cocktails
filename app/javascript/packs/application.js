require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap';
import { initiCard } from '../components/card'



document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  initiCard();
});