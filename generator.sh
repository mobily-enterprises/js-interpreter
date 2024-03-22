#!/bin/bash


# STEP 1: Copy Acorn over
cp JS-Interpreter/acorn.js .

# STEP 2: Make up the interpreter
# This will just simply prepend the definition of globalThis
cat <<EOD > js-interpreter.js
var globalThis
if (typeof exports === 'undefined') {
  globalThis = window
} else {
  globalThis = exports
  globalThis.acorn = require('./acorn.js')
}
EOD
cat JS-Interpreter/interpreter.js >> js-interpreter.js

