// app/javascript/components/banner.js
import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["1. Create your own cocktail", "2. Drink the cocktail", "3. Cause a public disturbance"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
