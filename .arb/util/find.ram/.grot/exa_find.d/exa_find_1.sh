#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa_find.d || 
{
    plt_exit "in ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa_find.d/exa_find_1.sh : FAIL_EXEC : cd ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa_find.d return 1"
    return 1
}

echo -e "${HLIGHT}--- find . ---${NORMAL}" #start files

find . 

echo -e "${HLIGHT}--- find ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa_find.d ---${NORMAL}" #start files

find ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa_find.d

cp -v ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/pdf_find.d/Losst.pdf

echo -e "${HLIGHT}--- find . -type f -name *.pdf -size +5M ---${NORMAL}" #start files

find . -type f -name *.pdf -size +5M

echo -e "${HLIGHT}--- find . -type f -size +5c -size -6M ---${NORMAL}" #start files

find . -type f -size +5c -size -6M

echo -e "${HLIGHT}--- find . -type f -size +5c -size -6M -exec cat {} \;---${NORMAL}" #start files

find . -type f -size +5c -size -6M -exec cat {} \;
