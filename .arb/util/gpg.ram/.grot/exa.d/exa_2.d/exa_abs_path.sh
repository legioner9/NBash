#!/bin/bash

tst_d=${HOME}/REPOBARE/_repo/NBash/.arb/util/gpg.ram/.grot/exa.d/exa_2.d/tst.d

cd ${tst_d} || return 1

rm -r src/*
cp -r init/. src

arr_n=(dst dcd)

for item_n in ${arr_n[@]}; do
    rm -r "${item_n:?}"/*
    touch "${item_n:?}"/0
done

cd ${tst_d}/src || return 1

# gpg -c -o dst.f src.f
gpg -c -o ${tst_d}/dcd/dst.f src.f

# cp dst.f ../dcd

file ${tst_d}/dcd/dst.f

# cd
gpg -d -o ${tst_d}/dcd/dst_res.f ${tst_d}/dcd/dst.f

# rm src.f
# gpg -d dst.f >../dcd/dcd.f1
# gpg -d -o dcd.f2 dst.f
