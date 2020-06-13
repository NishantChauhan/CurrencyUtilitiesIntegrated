rm -rf CurrencyUtilities 
git clone https://github.com/NishantChauhan/CurrencyUtilities.git
cd CurrencyUtilities
npm ci
npx webdriver-manager update
export APP_URL=http://localhost:4000/
npm run prod-e2e