#!/bin/bash

dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa_2.d/exa_1.d

cd ${dir} || echo "FAIL cd ${dir}" >&2

rm -r poroject.doxy
mkdir poroject.doxy

cd poroject.doxy || echo "FAIL cd poroject.doxy" >&2

doxygen ${dir}/Doxyfile
yandex-browser ${HOME}/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa_2.d/exa_1.d/poroject.doxy/html/index.html