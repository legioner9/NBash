#!/bin/bash

file_2=${REPO_PATH}/NBash/.arb/util/awk.ram/.grot/exa.d/exa_file_2.d/exa_file_2.file


echo "exactly as cat"
echo -e "${HLIGHT}--- awk '{print $0}' ${file_2} ---${NORMAL}" #start files
awk '{print $0}' ${file_2}

echo "as cat with num str"
echo -e "${HLIGHT}--- awk '{print NR,$0}' ${file_2} ---${NORMAL}" #start files
awk '{print NR,$0}' ${file_2}

 
echo "column 1 row "
awk '{print $2}' information.txt | head -2