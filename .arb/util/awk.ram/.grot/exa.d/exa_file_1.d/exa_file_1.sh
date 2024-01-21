#!/bin/bash

file_1=${REPO_PATH}/NBash/.arb/util/awk.ram/.grot/exa.d/exa_file_1.d/exa_file_1.file

cat "${file_1}"
echo
< "${file_1}" awk '{totalBytes+=$NF} END {print totalBytes}' # #! awk only stream 
cat "${file_1}" | awk '{totalBytes+=$NF} END {print totalBytes}'