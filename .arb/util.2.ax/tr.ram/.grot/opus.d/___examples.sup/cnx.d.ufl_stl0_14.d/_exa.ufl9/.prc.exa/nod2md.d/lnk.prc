#!/bin/bash

echo -e "${CYAN}--- lnk_rnd7_0953552() $* in file://${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/lnk.prc ---${NORMAL}" #started functions

lnk_rnd7_0953552() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/lnk.prc"
    local path_dir="$(dirname "$path_file")"

    local _item_=${ARGS[0]}
    local max_deep_=${ARGS[1]}

    echo -e "${CYAN}--- $FNN() $* in file://${path_file}---${NORMAL}" #started functions

    echo -e "${GREEN}\$max_deep_ = $max_deep_${NORMAL}" #print variable

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

    echo "in lnc.prc"

    # _lnv2e ${dir_cntx}/nod2md.d.cntx

    # local short_item=$(_s2se ${HOME} @ ${_item_})
    local relpath=$(_ee2rpth ${file_md} ${_item_})

    echo -e "
# LNK ${relpath}
[${name_ext}](${relpath})
" >>${file_md}

    # local lnk_dir=$(_f2e ${_item_})

    local lnk_dir=

    for lnk_dir in $(_f2e ${_item_}); do

        # echo ${lnk_dir} >> ${file_md}
        # REPOBARE/_repo/sta/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/lnk.prc
        not_ufn=0
        [ -d ${lnk_dir} ] || {

            echo -e "${RED}--- start cat file://${_item_} ---${NORMAL}" #start files
            cat ${_item_}
            echo -e "${RED}--- end cat file://${_item_} ---${NORMAL}" #start files
            _edit ${_item_}
            _st_pause "in fs= file://${dir_prc}/nod2md.d/lnk.prc , line=${LINENO}, EXEC: lnc.prc : NOT_DIR (\${lnk_dir}) : 'file://${lnk_dir}' : ${hint}"
            echo -e "
- err link [${name_ext}](${relpath})
" >>${file_md}
            not_ufn=1
        }

        [ ${not_ufn} -eq 0 ] && {

            #             echo -e "
            # - start link [${name_ext}](${short_item})
            # " >>${file_md}

            ufl_stl0_9_infn_1 ${lnk_dir} $((max_deep_ - 1)) || {
                _st_exit "in fs= file://${dir_prc}/nod2md.d/lnk.prc , line=${LINENO}, EXEC: ${FNN} $* : : EXEC_FAIL : 'ufl_stl0_9_infn_1 ${lnk_dir} $((max_deep_ - 1))' : ${hint} : return 1"
                cd $PPWD
                return 1
            }

            #             echo -e "
            # - end link [${name_ext}](${short_item})
            # " >>${file_md}
        }
    done
    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

lnk_rnd7_0953552 "$@"
