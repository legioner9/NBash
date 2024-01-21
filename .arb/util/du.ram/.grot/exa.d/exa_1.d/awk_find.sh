#!/bin/bash

dir="${REPO_PATH}"/NBash/.arb/util/du.ram/.grot/exa.d/exa_1.d/exa_dir.d

echo -e "${HLIGHT}--- find ${dir} -type f -exec du -h {} + | sort -rh | head -n 10 ---${NORMAL}" #start files
find "${dir}" -type f -exec du -h {} + | sort -rh | head -n 10