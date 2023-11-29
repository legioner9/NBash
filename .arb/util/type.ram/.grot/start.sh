#!/bin/bash

# ram_=type
# arb_=${PATH_CURR_REPO}/NBash/.arb/util

path_file=${PATH_CURR_REPO}/NBash/.arb/util/type.ram/.grot/start.sh

echo -e "${HLIGHT}--- ${PATH_CURR_REPO}/NBash/.arb/util/type.ram/.grot/start.sh ---${NORMAL}" #start files


#? return 0
type -t mkdir # file
type -t if # keyword
type gk # alias

type -p mkdir # /bin/mkdir

type mkdir # mkdir является /bin/mkdir
type if # if — это ключевое слово командного процессора
type gk # gk — это псевдонимом для «gitk --all&»

type NBash # NBash — это функция
# NBash () 
# { ... }

#? return 1
type if_ # bash: type: if_: не найден 