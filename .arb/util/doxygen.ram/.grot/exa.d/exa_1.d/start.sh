#!/bin/bash

dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa.d/exa_1.d

cd ${dir} || echo "FAIL cd ${dir}" >&2

cd poroject.doxy || echo "FAIL cd poroject.doxy" >&2

doxygen ${dir}/Doxyfile
yandex-browser ${HOME}/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa.d/exa_1.d/poroject.doxy/html/index.html