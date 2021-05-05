# NPM pacckage for Neil Fraser's JS Interpreter

This is an NPM version of the [JS interpreter by NeilFraser](https://github.com/NeilFraser/JS-Interpreter).

## Usage

In node:

    const Interpreter = require('js-interpreter-npm')
    const acorn = require('js-interpreter-npm/acorn') // If you need acorn directly

 In the browser (usage is identical to using js-interpreter directly):

    <script src="acorn.js"></script>
    <script src="interpreter.js"></script>
