#!/bin/bash

# sed "/pattern/ {
# h
# r $scriptPath/adapters/default/permissions.xml
# g
# N
# }" "$manifestFile"

cd ${REPO_PATH}/NBash/.arb/man/sed_f_into_f.ram/.grot/exa.d/exa_1.d/exa_dir || plt_exit

cp init.file receive.file

sed "/{{in}}/ {
h
r insert.file
g
N
}" receive.file

# cat receive.file