#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/util/mkfifo.ram/.grot/exa.d/exa_1.d/dir_exa || plt_exit

plt_pause "in terminal 1?"

mkfifo pipe1

echo -e "${BLUE}--- wait terminal 2 : . '/home/st/REPOBARE/_repo/NBash/.arb/util/mkfifo.ram/.grot/exa.d/exa_1.d/2_read_from_fifo copy.sh' ---${NORMAL}" #sistem info mesage

echo "test test test" > pipe1


