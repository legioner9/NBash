#!/bin/bash

# $ foo=hello
# $ var=foo
# $ echo "${!var+$var is set, its value is ${!var}}"
# foo is set, its value is hello

fnn() {

    local ARGS0=$1

    # local rnd_var_name=

    echo 1 "local rnd_var_name=var_$(_rnd2e)"
    eval "local rnd_var_name=var_$(_rnd2e)"

    echo 2 "${rnd_var_name}=()"
    eval "${rnd_var_name}=()"

    # echo "${rnd_var_name}=${!rnd_var_name}"

    eval num=\$\{#"${ARGS0}"[@]\}

    for ((i = 0; i < ${num}; i++)); do

        eval "${rnd_var_name}+=(\${${ARGS0}[$i]}x)"

    done

    echo "_parr3e ${rnd_var_name}"

    eval "_parr3e ${rnd_var_name}"

    echo "${ARGS0}=(\${${rnd_var_name}[@]})"

    eval "${ARGS0}=(\${${rnd_var_name}[@]})"

}

rnd_var_name=("22" "aa")

fnn rnd_var_name

_parr3e rnd_var_name
