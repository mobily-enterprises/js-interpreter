# NPM version of the official JS Interpreter by Neil Fraser

This is the NPM version of the [official JS interpreter by NeilFraser](https://github.com/NeilFraser/JS-Interpreter).

It's not a fork. The original JS-interpreter is a GIT submodule of this project.

## Usage

In node:

    const Interpreter = require('js-interpreter-npm')
    const acorn = require('js-interpreter-npm/acorn') // If you need acorn directly
    
 In the browser (as you would use js-interpreter straight):
 
    <script src="acorn.js"></script>
    <script src="interpreter.js"></script>
    
