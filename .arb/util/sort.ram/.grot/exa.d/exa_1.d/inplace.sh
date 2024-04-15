#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/util/sort.ram/.grot/exa.d/exa_1.d || echo "err cd" >&2

# cp dir/init.file dir/sort.file

sort -u dir/init.file dir/init2.file -o dir/sort.file
# sort dir/sort.file >/dev/null

#! sort file > tmp && mv tmp file

#* all in dir
#! find . -type f -exec sort {} -o {} \; 

cat dir/sort.file