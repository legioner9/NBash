#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/man/rel_path_in_link.ram/.grot/exa.d/exa_1.d || plt_exit

cd src.d

rm ../dest.d

ln -s --relative src.file ../dest.d
# ln -s --relative ${REPO_PATH}/NBash/.arb/man/rel_path_in_link.ram/.grot/exa.d/exa_1.d /src.d/src.file ../dest.d/src.rnl.file

ls -l ../dest.d/