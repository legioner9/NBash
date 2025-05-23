#!/bin/bash

#! tml for ufl_stl0 14 .d/.prc/usr.dfl.prc
#! define ENV_1 as clousure const = org_prc_dr from parent processes
echo -e "${CYAN}--- usr.dfl_aft_rnd7_36451e6() $* in file://${ENV_1}/aft.d/usr.dfl_aft.prc ---${NORMAL}" #started functions

usr.dfl_aft_rnd7_36451e6() {

    # HST :: gig command :: [ufl_stl0 1 2 ${REPO_PATH}/NBash/.arb/util.2.ax/tr.ram/.grot/opus.d/_cntx.ins.d.ufl_stl0_14.d/.d/.prc/aft.d/usr.dfl_aft.prc in file://${ST_RC_D_PATH}/.d/.arb/stl0.arb/ufl_stl0.ram/.grot/ufl_stl0.sh] in file://${REPO_PATH}/NBash/.arb/util.2.ax/tr.ram/.grot/opus.d/_cntx.ins.d.ufl_stl0_14.d

    local FNN=${FUNCNAME[0]}
    local ARGS=("$@")
    local NARGS=$#
    local PPWD=$PWD
    #! define ENV_1 as clousure const = org_prc_dr from parent processes
    local path_file="${ENV_1}/aft.d/usr.dfl_aft.prc"
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

        cd $PPWD
        return 0
    fi

    # local api_dr=
    #{{api_arg}}

    #* check _isn_from
    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${path_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     cd $PPWD
    #     return 1
    # fi

    #* path -> u@path
    #! ptr_path
    # local ptr_path_1="$1"
    # ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    #* check arg from arg_arr
    # [[ "${arg_arr[*]}" == *$arg* ]]

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* define local variables

    #! START BODY FN ---------------------------------------

    echo "START BODY FN : ${FNN}() $*"

    #{{body_fn}}
    echo "from usr.dfl_aft.prc.ins" 
    #! END BODY FN ---------------------------------------

    cd $PPWD
    return 0

}

usr.dfl_aft_rnd7_36451e6 "$@"
