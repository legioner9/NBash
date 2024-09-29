#!/bin/bash

file=${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa.d/exa_newer.d/exa_1.sh

dir_tst=${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa.d/exa_newer.d
that_file=${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa.d/exa_newer.d/exa_dir/that.file 
newer_file=${REPO_PATH}/NBash/.arb/util/find.ram/.grot/exa.d/exa_newer.d/exa_dir/tst.d/1/newer.file


cd ${dir_tst}

touch ${that_file}
touch ${newer_file}
echo -e "${HLIGHT}--- find . -newer ${newer_file} ---${NORMAL}" #start files
find . -newer ${that_file}

touch ${newer_file}
touch ${that_file}
echo -e "${HLIGHT}--- find . -newer ${newer_file} ---${NORMAL}" #start files
find . -newer ${that_file}

