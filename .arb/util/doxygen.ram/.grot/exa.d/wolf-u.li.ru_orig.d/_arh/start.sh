#!/bin/bash

dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa.d/wolf-u.li.ru_v1.d

cd ${dir} || echo "FAIL cd ${dir}" >&2

cd poroject.doxy || echo "FAIL cd poroject.doxy" >&2

rm -r ${dir}/poroject.doxy/*

ls ${dir}/poroject.doxy
export PROJECT_NAME="XXX"
doxygen ${dir}/Doxyfile
yandex-browser ${dir}/html/index.html
