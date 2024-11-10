#!/bin/bash

dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/sed.ram/.grot/exa.d/exa_insert_str.d

cd "${dir}" || echo "FAIL cd ${dir}" >&2

cd tst

pwd

rm res.fl
cp init.fl res.fl


# insert two string before string
# sed '/^anothervalue=.*/i before=me\nbefore2=me2' init.fl > res.fl
sed -i '/^anothervalue=.*/i before2=me2' res.fl 

cat res.fl