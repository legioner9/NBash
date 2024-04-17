#!/bin/bash

f() {
   declare -r -g var1="val1"
}
f
var1="RRR"
# declare -f 
# declare -i
echo $var1
