#!/bin/bash

dir="${REPO_PATH}"/NBash/.arb/util/du.ram/.grot/exa.d/exa_1.d/exa_dir.d

echo "for 1 level: "
echo -e "${HLIGHT}--- du -d 1 \${dir}  dir=${dir} ---${NORMAL}" #start files
du -d 1 "${dir}"

echo "parent level: "
echo -e "${HLIGHT}--- du -d 0 \${dir}  dir=${dir} ---${NORMAL}" #start files
du -d 0 "${dir}"