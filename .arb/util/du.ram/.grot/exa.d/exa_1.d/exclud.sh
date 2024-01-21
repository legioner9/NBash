#!/bin/bash

dir="${REPO_PATH}"/NBash/.arb/util/du.ram/.grot/exa.d/exa_1.d/exa_dir.d

echo -e "${HLIGHT}--- du \${dir}  dir=${dir} ---${NORMAL}" #start files
du -h "${dir}"

echo -e "${HLIGHT}--- du --exclude="\${dir}"/PT \${dir}  dir=${dir} ---${NORMAL}" #start files
du -h --exclude="${dir}"/PT "${dir}"

echo "more once exclude NOT WORK:"
echo -e "${HLIGHT}--- du --exclude="\${dir}"/PT --exclude="\${dir}"/Jpg \${dir}  dir=${dir} ---${NORMAL}" #start files
du -h --exclude="${dir}"/PT --exclude="\${dir}"/Jpg "${dir}"

