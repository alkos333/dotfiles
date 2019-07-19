/* globals gauge*/
// const { openBrowser,write, closeBrowser, goto, press, text, focus, inputField, toRightOf } = require('taiko');
const screenshot = gauge.screenshot
// const step = gauge.step
const expect = require("chai").expect
const should = require("chai").should()

beforeSuite(async () => {
    // await openBrowser({ headless: headless })
});

afterSuite(async () => {
    // await closeBrowser();
});

step("Goto getgauge github page", async () => {
  console.log(process.env);
    screenshot();
    // await goto('https://github.com/getgauge');
});

step("Search for <query>", async (query) => {
    // await focus(inputField(toRightOf('Pricing')))
    // await write(query);
    // await press('Enter');
});

step("Page contains <content>", async (content) => {
    should.exist(content)
});
