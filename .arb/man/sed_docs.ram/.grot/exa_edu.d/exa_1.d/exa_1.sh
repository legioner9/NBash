#!/bin/bash

cd /home/st/REPOBARE/_repo/NBash/.arb/man/sed_docs.ram/.grot/exa_edu.d/exa_1.d || plt_exit

echo -e "${HLIGHT}--- exec: sed -n 'p' 1_10.txt ---${NORMAL}" #start files
sed -n 'p' "1_10.txt"
echo -e "${HLIGHT}--- sed -n '2,8 p' 1_10.txt---${NORMAL}" #start files
sed -n '2,4 p' 1_10.txt
echo -e "${HLIGHT}--- exec: sed -n '2,4 {p ; p}' 1_10.txt ---${NORMAL}" #start files
sed -n '2,4 {p ; p}' 1_10.txt

echo -e "${HLIGHT}--- exec: sed -n '1,3 { p ; p } ; 1,2 { p ; p }' ; { p ; p } 1_10.txt ---${NORMAL}" #start files
sed -n '1,3 { p ; p } ; 1,2 { p ; p } ; { p ; p }' 1_10.txt

echo -e "${HLIGHT}--- exec: sed -n '\$p' 1_10.txt ---${NORMAL}" #start files
sed -n '$p' 1_10.txt