#!/bin/bash

echo -e "${CYAN}--- anc_rnd7_bea27d5() $* in file://${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/anc.prc ---${NORMAL}" #started functions

anc_rnd7_bea27d5() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/anc.prc"
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

    #{{body_fn}}

    echo "in anc.prc"

    # _lnv2e ${dir_cntx}/nod2md.d.cntx

    local short_item=$(_s2se ${HOME} @ ${_item_})

    echo -e "
# ANC ${short_item}
" >>${file_md}

    echo -e "
[${name_ext}](${short_item})
" >>${file_md}

    local item2=

    # item2=$(_f2e ${_item_})

    for item2 in $(_f2e ${_item_}); do

        # echo ${lnk_dir} >> ${file_md}
        # REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/lnk.prc
        echo -e "${GREEN}\$item2 = file://$item2${NORMAL}" #print variable
        not_ufn_item=0
        [ -f ${item2} ] || {

            echo -e "${RED}--- start cat file://${_item_} ---${NORMAL}" #start files
            cat ${_item_}
            echo -e "${RED}--- end cat file://${_item_} ---${NORMAL}" #start files
            _edit ${_item_}
            _st_pause "in fs= file://${dir_prc}/nod2md.d/anc.prc , line=${LINENO}, EXEC: in anc.prc : NOT_FILE (\${item2}) : 'file://${item2}' : ${hint}"
            itemufl_stl0_9_do_item $item2 || {
                _st_exit "in fs= file://$file_main , line=${LINENO}, EXEC: in anc.prc : : EXEC_FAIL : 'ufl_stl0_9_do_item $item2' : ${hint} : return 1"
                cd $PPWD
                return 1
            }

        }

    done
    return 0

    #! END BODY FN ---------------------------------------

}

anc_rnd7_bea27d5 "$@"
