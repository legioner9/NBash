#!/bin/bash

exec 5<&1
exec 1>${REPO_PATH}/NBash/.arb/info.ax/stream.ram/.grot/exa.d/save_output.d/testfile
echo "12345"
exec 1<&5
exec 5>&-
cat ${REPO_PATH}/NBash/.arb/info.ax/stream.ram/.grot/exa.d/save_output.d/testfile
lsof -a -p $$ -d 1,2,3,4,5,6