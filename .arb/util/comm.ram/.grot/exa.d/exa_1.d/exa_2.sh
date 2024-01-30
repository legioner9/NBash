#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/util/comm.ram/.grot/exa.d/exa_1.d || plt_exit

comm recipe.txt shopping-list.txt >stdout.csv

cat stdout.csv
