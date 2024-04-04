#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/util/rsync.ram/.grot/exa.d/exa_d_into_d.d || plt_exit
rm -r ./data/dir_a
rsync -avz --delete ./src/dir_a ./data