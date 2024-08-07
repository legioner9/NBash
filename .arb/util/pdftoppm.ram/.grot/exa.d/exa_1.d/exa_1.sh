#!/bin/bash

dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/pdftoppm.ram/.grot/exa.d/exa_1.d

cd ${dir} || echo "FAIL cd ${dir}" >&2

rm _tst/"003.requ_1.pdf"
cp "003.requ_1.pdf.pdf~" _tst/"003.requ_1.pdf"

cd _tst || echo "FAIL cd _tst" >&2


pdftoppm -jpeg "003.requ_1.pdf" 003.requ_1