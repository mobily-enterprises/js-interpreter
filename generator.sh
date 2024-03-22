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

  // This is important as JS-Interpreter assumes that the "global" scope
  // includes primitive variable types
  globalThis.String = String
  globalThis.Date = Date
  globalThis.Boolean = Boolean
  globalThis.Number = Number
  globalThis.RegExp = RegExp
}

EOD
cat JS-Interpreter/interpreter.js >> js-interpreter.js

