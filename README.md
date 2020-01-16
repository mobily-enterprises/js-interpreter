# OFFICIAL NPM pacckage for Neil Fraser's JS Interpreter

## Note: Do NOT use this package yet, since it will likely change its address frpm js-interpreter-npm to js-interpreter.

This is the official NPM version of the [JS interpreter by NeilFraser](https://github.com/NeilFraser/JS-Interpreter).

If you want to use JS-Interpreter, please use this package,

## Usage

In node:

    const Interpreter = require('js-interpreter-npm')
    const acorn = require('js-interpreter-npm/acorn') // If you need acorn directly

 In the browser (usage is identical to using js-interpreter directly):

    <script src="acorn.js"></script>
    <script src="interpreter.js"></script>
