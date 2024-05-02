#!/bin/bash

dir=${HOME}/REPOBARE/_repo/NBash/.arb/util/pod2man.ram/.grot/_repo/exa.d/exa_1.d
cd ${dir}|| echo "cd fail" >&2

for item in *; do

item_ext=$(_prs_f -e $item)
item_name=$(_prs_f -n $item)

    if [[ -f $item ]] && [[ $item_ext == "pod2" ]]; then

        echo -e "${HLIGHT}--- exec: cat $item ---${NORMAL}" #start files
        cat $item
        read -p "ENTER continue: pod2man < $item > $item_name.man "

        pod2man < $item > $item_name.man
        man $dir/$item_name.man
        
    fi
done
