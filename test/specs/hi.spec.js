const fs = require('fs')
const expect = require('chai').expect
const message = gauge.message

step("Say <greeting> to <name>", async function(greeting, name) {
  expect(greeting).to.equal("hello")
  let promise = new Promise((resolve, reject) => {
    setTimeout(() => resolve(console.log("time is up")), 5000)
  })
  message("Waiting on promise here folks - changed")
  await promise
  expect(name).to.equal("gauge")
});

step(["Another step", "One more step"], async () => {
  expect(1).to.equal(1)
})
