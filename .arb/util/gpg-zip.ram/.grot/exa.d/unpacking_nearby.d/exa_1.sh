#!/bin/bash

tst_dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/gpg-zip.ram/.grot/exa.d/unpacking_nearby.d/tst

# 
cd "${tst_dir}" || return 0

rm -r dst
mkdir dst
touch dst/0

rm -r src
mkdir src
cp -r init/. src

cd src || return 0

echo -e "${HLIGHT}--- gpg-zip -c -o d.tst.gpg d.tst ---${NORMAL}" #start files
gpg-zip -c -o d.tst.gpg d.tst

echo -e "${HLIGHT}--- rm d.tst/f1 ---${NORMAL}" #start files
rm d.tst/f1
touch d.tst/f3
echo 3 > d.tst/f3

echo -e "${HLIGHT}--- gpg-zip -d d.tst.gpg ---${NORMAL}" #start files
gpg-zip -d d.tst.gpg

cp d.tst.gpg ../dst

cd ../dst || return 0

gpg-zip -d d.tst.gpg