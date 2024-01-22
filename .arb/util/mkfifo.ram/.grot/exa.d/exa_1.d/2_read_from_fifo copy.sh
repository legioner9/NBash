#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/util/mkfifo.ram/.grot/exa.d/exa_1.d/dir_exa || plt_exit

plt_pause "in terminal 2?"

while read line ;do echo "Data: '$line' "; done<pipe1
