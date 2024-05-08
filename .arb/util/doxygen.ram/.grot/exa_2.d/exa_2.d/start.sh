#!/bin/bash

dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa_2.d/exa_2.d

cd ${dir} || echo "FAIL cd ${dir}" >&2

rm -r poroject.doxy
mkdir poroject.doxy

cd poroject.doxy || echo "FAIL cd poroject.doxy" >&2

export DOX_PROJECT_NUMBER=5
echo -e "${HLIGHT}--- exec: doxygen ${dir}/Doxyfile ---${NORMAL}" #start files
doxygen ${dir}/Doxyfile
yandex-browser ${HOME}/REPOBARE/_repo/NBash/.arb/util/doxygen.ram/.grot/exa_2.d/exa_2.d/poroject.doxy/html/index.html