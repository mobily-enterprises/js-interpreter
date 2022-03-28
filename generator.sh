#!/bin/bash

# STEP 1: Copy Acorn over
cp js-interpreter/acorn.js .

# STEP 2: Make up the interpreter

(
cat <<EOD
if (typeof exports === 'undefined') {
  scope = window
} else {
  scope = exports
  var acorn = require('./acorn.js')
}

(function () {
EOD
) > js-interpreter.js

cat js-interpreter/interpreter.js >> js-interpreter.js

(
cat <<EOD
}).call(scope)
EOD
) >> js-interpreter.js
