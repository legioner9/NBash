#!/bin/bash

cd /home/st/REPOBARE/_repo/NBash/.arb/man/sed_docs.ram/.grot/exa_edu.d/exa_2.d || plt_exit

echo -e "${HLIGHT}--- exec: sed -n '/start/,/end/ p' exa.txt ---${NORMAL}" #start files
sed -n '/start/,/end/ p' exa.txt

echo -e "${HLIGHT}--- exec: sed -n '/start/,\$p' exa.txt ---${NORMAL}" #start files
sed -n '/start/,$p' exa.txt

echo -e "${HLIGHT}--- exec: sed -n '/строка [[:digit:]]*/p' exa.txt ---${NORMAL}" #start files
sed -n '/строка [[:digit:]]*/p' exa.txt