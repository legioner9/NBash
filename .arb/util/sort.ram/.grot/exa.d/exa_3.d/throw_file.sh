#!/bin/bash

# cd ${REPO_PATH}/NBash/.arb/util/sort.ram/.grot/exa.d/exa_1.d || echo "err cd" >&2

# cp dir/init.file dir/sort.file

arrr=(d b a z x)

# IFS=$'\n' sorted_arr=($(sort <<<"${arrr[*]}"))
# IFS=$' \t\n'

# echo -e "${sorted_arr[*]}" #print variable

tmp_file=${TMP_DIR_ST_RC}/arr_utags.file

: >${tmp_file}
for str in ${arrr[*]}; do
    echo ${str} >>${tmp_file}
done

sort ${tmp_file} -o ${tmp_file}.sort
cat ${tmp_file}.sort
