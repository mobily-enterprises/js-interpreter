const Interpreter = require("./interpreter.umd.js");

test("Evaluates 2+2 correctly", () => {
  const a = new Interpreter("2+2");
  a.run();
  expect(a.value).toBe(4);
});
