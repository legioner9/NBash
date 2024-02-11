#!/bin/bash

#. "$HOME/.bashrc"

filename=${REPO_PATH}/NBash/.arb/util/date.ram/.grot/exa.d/exa_1.d/flow_replace_old/replace_old.sh

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

r_dir=${REPO_PATH}/NBash/.arb/util/date.ram/.grot/exa.d/exa_1.d/flow_replace_old

orig=${r_dir}/orig
copy=${r_dir}/copy

t_orig=$(date +%s -r orig)
echo -e "${GREEN}\$t_orig = $t_orig${NORMAL}" #print variable

cal_orig=$(date --date="@${t_orig}")
echo -e "${GREEN}\$cal_orig = $cal_orig${NORMAL}" #print variable

t_copy=$(date +%s -r copy)
echo -e "${GREEN}\$t_copy = $t_copy${NORMAL}" #print variable

if [ "$copy" -ot "$orig" ]; then
    # if [ "$copy" -nt "$orig" ]; then
    echo -e "${BLUE}---be copied---${NORMAL}" #sistem info mesage
    cp "$orig" "$copy"
fi

ls -lh ${r_dir}

unset filename
