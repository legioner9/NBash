#!/bin/bash

# cd ${REPO_PATH}/NBash/.arb/util/sort.ram/.grot/exa.d/exa_1.d || echo "err cd" >&2

# cp dir/init.file dir/sort.file

arrr=(d b a z x)

IFS=$'\n' sorted_arr=($(sort <<<"${arrr[*]}"))
unset IFS

echo -e "${sorted_arr[*]}" #print variable
