#!/bin/bash

exec 3>${REPO_PATH}/NBash/.arb/info.ax/stream.ram/.grot/exa.d/exa_2.d/myfile1
exec 6>${REPO_PATH}/NBash/.arb/info.ax/stream.ram/.grot/exa.d/exa_2.d/myfile2
exec 7<${REPO_PATH}/NBash/.arb/info.ax/stream.ram/.grot/exa.d/exa_2.d/myfile3
lsof -a -p $$ -d 0,1,2,3,6,7
