#!/bin/bash

echo -e "${CYAN}--- pdf_rnd7_7c561d8() $* in file://${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/pdf.prc ---${NORMAL}" #started functions

pdf_rnd7_7c561d8() {

    # gig from file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    local path_file="${ST_RC_D_DATA_PATH}/.d/.st_rc_d.data.d/ufl_stl0/.flow.d/009_dr2m/.prc/nod2md.d/pdf.prc"
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

    echo "in pdf.prc"

    # _lnv2e ${dir_cntx}/nod2md.d.cntx

    local short_item=$(_s2se ${HOME} @ ${_item_})

    local dir_item=$(_prs_f -d ${_item_})

    local name2=$(_prs_f -n2 ${_item_})
    local ext1=$(_prs_f -e ${_item_})
    local ext2=$(_prs_f -e2 ${_item_})

    pdftoppm -jpeg "${_item_}" ${dir_item}/res.pdftoppm
    local res_jpg=${dir_item}/${name2}.pic.jpg

    mv ${dir_item}/res.pdftoppm-1.jpg ${res_jpg}

    mv ${_item_} ${dir_item}/${name2}.${ext1}

    # echo -e "
    # <!-- file://${res_jpg} -->

    # [${name2}.pic.jpg](${short_item})

    # ![${name2}.pic.jpg](${short_item})
    # " >> ${file_md}

    #{{body_fn}}

    #! END BODY FN ---------------------------------------

    return 0

}

pdf_rnd7_7c561d8 "$@"
