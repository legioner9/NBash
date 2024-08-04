#!/bin/bash

echo -e "${CYAN}--- v_1_fn_rnd7_7dec84c() $* in file://${REPO_PATH}/NBash/.arb/util/yt-dlp.ram/.grot/v.d/exa_1.d/v_1_fn.sh---${NORMAL}" #started functions

v_1_fn_rnd7_7dec84cx() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${REPO_PATH}/NBash/.arb/util/yt-dlp.ram/.grot/v.d/exa_1.d/tp_2_pl_fn.sh"
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

    mkdir ${HOME}/tp_2_pl

    # local path_list_curr=${path_dir}/vdo_pf_v3.lst
    # local path_list_work=${HOME}/v/vdo_pf_v3.lst

    cp ${path_list_curr} ${HOME}/tp_2_pl

    cd ${HOME}/tp_2_pl


    local str_0="https://www.youtube.com/playlist?list=PLfnvyWr5sdi2tJO4Fb5YLMMSluMKZsq_4"



        # yt-dlp -c "https://www.youtube.com/watch?v=tJwDiAPqSw0&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=$num&pp=iAQB"

        # echo -e "${HLIGHT}--- yt-dlp -c https://www.youtube.com/watch?v=AQTHyG-KM7U&list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co&index=19 ---${NORMAL}" #start files
        # "wv*+wa/w"
        # '(bv*[ext=mp4][height<=720]+ba*[ext=m4a])[protocol^=http]'
        # 'worstvideo[vcodec^=avc1]+worstaudio[acodec^=mp4a]'

        # until yt-dlp -c -f worstvideo+worstaudio ${str_0}/${item}; do
        until yt-dlp -c -f '(bv*[ext=mp4][height<=720]+ba*[ext=m4a])[protocol^=http]' -o '%(title)s.%(ext)s' --yes-playlist ${str_0}; do
            :
        done



    # until yt-dlp https://www.youtube.com/playlist?list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co; do
    #     :
    # done

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

v_1_fn_rnd7_7dec84cx "$@"
