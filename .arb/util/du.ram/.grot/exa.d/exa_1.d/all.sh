#!/bin/bash

dir="${REPO_PATH}"/NBash/.arb/util/du.ram/.grot/exa.d/exa_1.d/exa_dir.d

echo -e "${HLIGHT}--- du \${dir}  dir=${dir} ---${NORMAL}" #start files
du "${dir}"

echo "human -v"
echo -e "${HLIGHT}--- du -h \${dir}  dir=${dir} ---${NORMAL}" #start files
du -h "${dir}"

echo "bloc min:"
echo -e "${HLIGHT}--- du -BM \${dir}  dir=${dir} ---${NORMAL}" #start files
du -BM "${dir}"

echo "size dirs without subdir:"
echo -e "${HLIGHT}--- du -hS \${dir}  dir=${dir} ---${NORMAL}" #start files
du -hS "${dir}"

echo "itogo:"
echo -e "${HLIGHT}--- du -hSc \${dir}  dir=${dir} ---${NORMAL}" #start files
du -hSc "${dir}"