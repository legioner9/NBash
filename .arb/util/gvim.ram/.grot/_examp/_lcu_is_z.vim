#!/bin/bash

_lcu_is_z() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")

    local ARGS0="$1"
    local ARGS1="$2"
    local ARGS2="$3"
    local ARGS3="$4"

    local NARGS=$#

    local hint="hint-> \$1 file.lcu \$2 (@|_main|_tags)"
    local item=

    #* local fn_data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.d

    local sh_file=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.d/${FNN}.sh
    local tst_file=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.sh
    local tst_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.tst.d/${FNN}.tst.d
    local tst_dir_file=${tst_dir}/${FNN}.tst.sh
    local flow_dir_file_1=${tst_dir}/${FNN}.tst.sh.deb1
    local tst_lst_env=${tst_dir}/.lst/tst_env.lst

    local data_dir=${HOME}/.d/.rc.d/.st.rc.d/.st.sh.data.d/${FNN}.d
    local user_datd_dir=${ST_RC_D_DATA_PATH}/.d/.st.rc.data.d/${FNN}.d

    local hie_file=${HOME}/.d/.rc.d/.st.rc.d/.st.hie.d/${FNN}.hie

    # echo -e "${CYAN}--- start : ${FNN}() $@ ---${NORMAL}" #sistem info mesage

    #? _lnv2e ${tst_lst_env}

    if ! [[ -d ${PPWD} ]]; then
        echo "in fs= file://${sh_file} , line=${LINENO}, ${FNN}() : \${PWD} NOT_DIR : 'file://${PPWD}' : ${hint} : return 1"
        return 1
    fi

    if [[ "-h" == "$1" ]]; then
        echo -e "
MAIN: ${FNN} :: is empty in \$1 file.lcu \$2 (@|_main|_tags)
TAGS: 
\$1 file.lcu
\$2 (@ | - empty locmAt = main && tags
 _main | - empty locm = main
 _tags) - empty loct = tags
CNTL: 
    _e      : _edit body            : _edit file://${sh_file}
    _t      : _edit tst_dir         : _edit file://${tst_dir}
    _d      : exec tst_dir_fn       : . file://${tst_dir_file}
    _f1     : exec flow_dir_file_1  : . file://${flow_dir_file_1}
    _f1_e   : _edit flow_dir_file_1 : _edit file://${flow_dir_file_1}
    _hie_m  : more hie_file         : more file://${hie_file} 
    _hie_e  : _edit hie_file        : _edit file://${hie_file} 
    _data_e : _edit data_dir        : _edit file://${data_dir} 
    _user_datd_dir_e : _edit user_datd_dir : _edit file://${user_datd_dir} 

RETU: true if:
    (@ | - empty locmAt = main && tags
    _main | - empty locm = main
    _tags) - empty loct = tags
EXAM: 
    _lcu_
    ${FNN}
"
        return 0
    fi

    if [[ "_e" == "$1" ]]; then
        _edit ${sh_file}
        cd $PPWD
        return 0
    fi

    if [[ "_t" == "$1" ]]; then
        _edit ${tst_dir}
        cd $PPWD
        return 0
    fi

    if [[ "_d" == "$1" ]]; then
        . ${tst_dir_file}
        cd $PPWD
        return 0
    fi

    if [[ "_f1" == "$1" ]]; then
        . ${flow_dir_file_1}
        cd $PPWD
        return 0
    fi

    if [[ "_f1_e" == "$1" ]]; then
        _edit ${flow_dir_file_1}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_m" == "$1" ]]; then
        more ${hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_hie_e" == "$1" ]]; then
        _edit ${hie_file}
        cd $PPWD
        return 0
    fi

    if [[ "_data_e" == "$1" ]]; then
        _edit ${data_dir}
        cd $PPWD
        return 0
    fi

    if [[ "_user_datd_dir_e" == "$1" ]]; then
        _edit ${user_datd_dir}
        cd $PPWD
        return 0
    fi

    #? ----- START _lcu_is_z body -----

    # hint="\$1: \$2: "
    if _isn_from ${NARGS} 2 2 "in fs= file://${sh_file}, line=${LINENO}, ${FNN}() : DEMAND '2' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        cd $PPWD
        return 1
    fi

    #[[ptr_path]]
    #! ptr_path
    local ptr_path_1="$1"
    ptr_path_1="$(_abs_path "${PPWD}" "ptr_path_1")"

    [ -f ${ptr_path_1} ] || {
        _st_exit "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : NOT_FILE (\$1) : 'file://path_file' : ${hint} : return 1"
        cd $PPWD
        return 1
    }

    #* ${HOME}.d/.rc.d/.st.rc.d/.st.d

    #? ----- END _lcu_is_z body -----

    # local rndx
    # rndx=$(cat ${ptr_path_1} | grep "RNDX:")
    local tags
    tags=$(cat ${ptr_path_1} | grep "TAGS:")
    tags=${tags:5}
    tags=$(_sTRMe "${tags}")
    
    local main
    main=$(cat ${ptr_path_1} | grep "MAIN:")
    main=${main:5}
    main=$(_sTRMe "${main}")


    # echo -e "${GREEN}\$tags = '$tags'${NORMAL}" #print variable
    # echo -e "${GREEN}\$main = '$main'${NORMAL}" #print variable

    if [ "$2" != "@" ] && [ "$2" != "_main" ] && [ "$2" != "_tags" ]; then
        _st_exit "in fs= file:// , line=${LINENO}, EXEC: ${FNN} $* : (\$2): NOT_IN_CONDITION : '(@|_main|_tags)' : ${hint} : return 1"
        cd $PPWD
        return 1
    fi

    [ "$2" == "@" ] && {
        if [ -z "$tags" ] && [ -z "$main" ]; then
            cd $PPWD
            return 0
        else
            cd $PPWD
            return 1
        fi
    }

    [ "$2" == "_main" ] && {
        if [ -z "$main" ]; then
            cd $PPWD
            return 0
        else
            cd $PPWD
            return 1

        fi
    }

    [ "$2" == "_tags" ] && {
        if [ -z "$tags" ]; then
            cd $PPWD
            return 0
        else
            cd $PPWD
            return 1

        fi
    }
    return 0
}
