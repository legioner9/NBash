#!/bin/bash

echo -e "${CYAN}--- rpn_rnd7_c9981a9() $* in file://${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/rpn.prc ---${NORMAL}" #started functions

rpn_rnd7_c9981a9() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/rpn.prc"
    local path_dir="$(dirname "$path_file")"

    local _item_=${ARGS[0]}
    local max_deep_=${ARGS[1]}

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

    echo "in rpn.prc"

    # _lnv2e ${dir_cntx}/nod2md.d.cntx

    # local short_item=$(_s2se ${HOME} @ ${_item_})
    local relpath=$(_ee2rpth ${file_md} ${_item_})

    echo -e "
[${name_ext}](${relpath})
" >>${file_md}

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

rpn_rnd7_c9981a9 "$@"
