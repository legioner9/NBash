#!/bin/bash

# $ foo=hello
# $ var=foo
# $ echo "${!var+$var is set, its value is ${!var}}"
# foo is set, its value is hello

fnn() {

    local ARGS0=$1
    local num

    # echo "${rnd_var_name}=${!rnd_var_name}"

    if [[ ${ARGS0} != "arr_name" ]]; then

        local arr_name=()

        echo "num=\${#${ARGS0}[@]}"

        eval "num=\${#${ARGS0}[@]}"
        echo "\$num=$num"
        for ((i = 0; i < ${num}; i++)); do

            eval "arr_name+=(\${${ARGS0}[$i]}x)"

        done

        echo "${ARGS0}=(\${arr_name[@]})"

        eval "${ARGS0}=(\${arr_name[@]})"

    else

        hint="\$1: \$2: "
        _st_exit "in fs= file:// , line=${LINENO}, ${FNN}()  : : CONFLICT_NAME ARGS0=:'THIS' : ${hint} : return 1"
        return 1

    fi

}

arr_name=("22" "aa")

fnn arr_name

_parr3e arr_name
