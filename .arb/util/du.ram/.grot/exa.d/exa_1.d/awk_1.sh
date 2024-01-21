#!/bin/bash

dir="${REPO_PATH}"/NBash/.arb/util/du.ram/.grot/exa.d/exa_1.d/exa_dir.d

echo -e "${HLIGHT}--- du \${dir} | awk dir=${dir} '{sum+=$1} END {print \"sum:\", sum , \"in dir\" , dir}'  ::  dir=${dir} ---${NORMAL}" #start files
du "${dir}" | awk '{sum+=$1} END {print "sum:", sum , "in dir" , dir}'
