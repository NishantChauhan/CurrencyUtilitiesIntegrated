cd CurrencyUtilities
export CHROME_BIN=/usr/bin/chromium-browser
export CHROME_DRIVER=/usr/bin/chromedriver
npx webdriver-manager update
export APP_URL=http://localhost:4000/
npm run prod-e2e