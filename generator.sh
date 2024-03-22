#!/bin/bash

# STEP 1: Copy Acorn over
cp js-interpreter/acorn.js .

# STEP 2: Make up the interpreter
# This will just simply prepend the definition of globalThis
echo "var globalThis = exports" > js-interpreter.js
echo "globalThis.acorn = require('./acorn.js')" >> js-interpreter.js
cat js-interpreter/interpreter.js >> js-interpreter.js

