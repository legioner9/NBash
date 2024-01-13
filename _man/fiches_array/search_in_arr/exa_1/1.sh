#!/bin/bash

arr_filtr=(3 5)
parr3e_ arr_filtr

# arr_init=()
# arr_init[0]="1 +"
# arr_init[1]="2  . +"
# arr_init[2]="3 +"
# arr_init[3]="4  -"
# arr_init[4]="5 = ="

# for ((i = 0; i < 5}; i++));

arr_init=("1 +" "2  . +" "3 +" "4  -" "5 = =")
parr3e_ arr_init
arr_res=()
n=1

IFS=$'\n'
for item in ${arr_init[@]}; do

    for item2 in ${arr_filtr[@]}; do
        if [ ${item2} -eq $n ]; then
        
            echo -e 2 "${GREEN}\$n = $n${NORMAL}"       #print variable
            echo -e 2 "${GREEN}\$item = $item${NORMAL}" #print variable
            arr_res+=("${item}")

        fi
    done

    n=$((n + 1))

done
IFS=$' \t\n'
echo ${arr_res[0]}
echo ${arr_res[1]}

parr3e_ arr_res
