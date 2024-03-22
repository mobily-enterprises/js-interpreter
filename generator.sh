#!/bin/bash

# STEP 1: Copy Acorn over
cp js-interpreter/acorn.js .

# STEP 2: Make up the interpreter

cp js-interpreter/interpreter.js js-interpreter.js
patch -p1 < my.diff js-interpreter.js
