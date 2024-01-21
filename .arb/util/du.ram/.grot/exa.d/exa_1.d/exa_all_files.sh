#!/bin/bash

dir="${REPO_PATH}"/NBash/.arb/util/du.ram/.grot/exa.d/exa_1.d/exa_dir.d

echo "only files"
echo -e "${HLIGHT}--- du -a \${dir}  dir=${dir} ---${NORMAL}" #start files
du -a "${dir}"

echo "only one files"
echo -e "${HLIGHT}--- du \${dir}/Store/Losst.pdf  dir=${dir}/Store/Losst.pdf ---${NORMAL}" #start files
du "${dir}"/Store/Losst.pdf