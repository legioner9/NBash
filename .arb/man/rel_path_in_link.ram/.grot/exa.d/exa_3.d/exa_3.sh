#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/man/rel_path_in_link.ram/.grot/exa.d/exa_2.d || plt_exit

cd src.d

rm -rfv ../dest.d
mkdir -v ../dest.d

ln -sfv --relative ${REPO_PATH}/NBash/.arb/man/rel_path_in_link.ram/.grot/exa.d/exa_2.d/src.d/src.file ${REPO_PATH}/NBash/.arb/man/rel_path_in_link.ram/.grot/exa.d/exa_2.d/dest.d

# ln -s --relative ${REPO_PATH}/NBash/.arb/man/rel_path_in_link.ram/.grot/exa.d/exa_1.d /src.d/src.file ../dest.d/src.rnl.file

mv -fv ../dest.d/src.file ../dest.d/src.file.rnl

readlink ../dest.d/src.file.rnl  > ../dest.d/_src.file.rsym

ls -l ../dest.d/