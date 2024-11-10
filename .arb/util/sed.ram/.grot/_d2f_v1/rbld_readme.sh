#!/bin/bash

echo -e "${CYAN}--- rbld_readme_rnd7_3d6253b() $* in file://${ST_RC_D_PATH}/.d/.mul/rbld_readme.mul/.prc/rbld_readme.sh---${NORMAL}" #started functions

rbld_readme_rnd7_3d6253b() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${REPO_PATH}/NBash/.arb/util/sed.ram/.grot/_d2f_v1/rbld_readme.sh"
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

    #! rebuild all in dir
    local dot_ins_d=${path_dir}/.ins_dr
    for sd in $(_dd2e ${dot_ins_d}); do
        if [ -f "${dot_ins_d}/${sd}/res.md_ufl9" ]; then
            _source_w1_isf "${dot_ins_d}/${sd}/res.md_ufl9"
        else
            ufl_stl0 9 ${dot_ins_d}/${sd}/cnx.d ${dot_ins_d}/${sd}/res.md 2
        fi
    done

    echo "START BODY FN : ${FNN}() $*"

    if [ -f $path_dir/cntx.res.md_ufl9 ]; then
        _source_w1_isf $path_dir/cntx.res.md_ufl9
    else
        ufl_stl0 9 $path_dir/cntx.ins.d $path_dir/cntx.res.md 2
    fi

    _edit $path_dir/cntx.res.md

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

rbld_readme_rnd7_3d6253b "$@"
