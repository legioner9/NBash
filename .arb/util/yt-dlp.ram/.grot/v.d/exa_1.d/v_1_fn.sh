#!/bin/bash

echo -e "${CYAN}--- v_1_fn_rnd7_7dec84c() $* in file://${REPO_PATH}/NBash/.arb/util/yt-dlp.ram/.grot/v.d/exa_1.d/v_1_fn.sh---${NORMAL}" #started functions

v_1_fn_rnd7_7dec84c() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${REPO_PATH}/NBash/.arb/util/yt-dlp.ram/.grot/v.d/exa_1.d/v_1_fn.sh"
    local path_dir="$(dirname "$path_file")"

    # echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    cd ${path_dir} || {
        # hint="\$1: \$2: "
        _st_exit "in fs= file://$path_file , line=${LINENO}, ${FNN}() : NOT_DIR : 'file://${path_dir}' : ${hint} : return 1"
        return 1
    }

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
TAGS: @
ARGS: \$1
EXAM: 
EXEC: 
CNTL: 
    _go  : _edit ${path_file}
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( return 1 | ... )
    ${FNN} 
${NORMAL}"
    fi

    if [[ "_go" == "$1" ]]; then
        _edit "${path_file}"
        return 0
    fi

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} less more "in fs= file://${path_file} , line=${LINENO}, ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    # local _ARGS_=("$@")
    # _parr3e _ARGS_

    #{{ptr_path}}

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    mkdir ${HOME}/v

    cd ${HOME}/v

    local arr_do_not=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 24 26 44)
    local num=

    llocal str_0="https://youtu.be/"

    for ((num = 1; num <= 193; num++)); do
        [[ " ${arr_do_not[*]} " =~ $num ]] && continue

        echo -e "${GREEN}\$num = $num${NORMAL}" #print variable
        # yt-dlp -c "https://www.youtube.com/watch?v=tJwDiAPqSw0&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=$num&pp=iAQB"

        echo -e "${HLIGHT}--- yt-dlp -c https://www.youtube.com/watch?v=AQTHyG-KM7U&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=19 ---${NORMAL}" #start files

        until yt-dlp -c "https://www.youtube.com/watch?v=AQTHyG-KM7U&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=19"; do
            :
        done

    done

    # until yt-dlp https://www.youtube.com/playlist?list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co; do
    #     :
    # done

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

v_1_fn_rnd7_7dec84c "$@"
