#!/bin/bash

### Written by Legioner9 for the universe
### Part of the STL shell subsystem
### Location ${STL_D_PATH}/prc.d/boot_stl_fn.d

# ENV: ${STL_REPO_PATH} ${STL_D_PATH} ${STL_DATA_D_PATH} ${STL_LIB_D_PATH}
# "${ECHO_ERR}$FNN() $*' in file://${file_name} , line=${LINENO} :: CAUS_NAME [VAR] 'code' :: return 1${NRM}" >&2
# cd ${PPWD} || echo -e "${ECHO_WAR}'$FNN() $*' in file://${file_name} , line=${LINENO} :: NOT_DIR [\${PPWD}] '${PPWD}' return 1${NRM}" >&2

l_00_color2e() {

    #! THIS FILE WILL BE CREATED `. ${STL_D_PATH}/prc.d/boot_stl_fn.d/_rbld_l_xx.sh l_00_color2e`
    #! All changes will be lost after rebuilding
    #! To change this file use the following commands `l_00_color2e _e_prc` to edit "fn block", `l_00_color2e _e_xxx` to edit "init block"

    #* START init block from ${STL_D_PATH}/prc.d/boot_stl_fn.d/_\XXX ------------------
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local NARGS=$#

    local fn_dr=${STL_D_PATH}/prc.d/boot_stl_fn.d
    local prc_dr=${fn_dr}/__prc
    local tst_dr=${fn_dr}/__tst

    local fn_nm=${fn_dr}/${FNN}.sh
    local prc_nm=${prc_dr}/${FNN}.prc
    local tst_nm_dr=${tst_dr}/${FNN}
    local tst_nm_ex_=${tst_nm_dr}/exec.tst
    local tst_nm_fw_=${tst_nm_dr}/_flow_tst.sh
    local tst_nm_fw1_=${tst_nm_dr}/_flow_tst_v1.sh

    if ! [[ -d "${PPWD}" ]]; then
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    fi

    if [[ "_go" == "$1" ]]; then
        l_02_edit ${fn_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_prc" == "$1" ]]; then
        l_02_edit ${prc_nm}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_xxx" == "$1" ]]; then

        l_00_warn_p_r0 "You want change \"init block\" in ALL l_xx functions?"
        l_02_edit ${fn_dr}
        l_00_warn_p_r0 "Change _\XXX.sh"
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_e_tst_dr" == "$1" ]]; then
        l_02_edit ${tst_nm_dr}
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_tst" == "$1" ]]; then
        . ${tst_nm_dr}/exec.tst || {
            cd "${PPWD}" || {
                echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: EXEC_FAIL '. ${tst_nm_dr}/${FNN}/exec.tst' return 1${NRM}" >&2
                return 1
            }
            return 1
        }
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    if [[ "_rbld" == "$1" ]]; then
        #! rebuild fn : bcp && ord fn.sh from l_00_color2e.sh , cp fn.prc into fn.sh
        . ${fn_dr}/_rbld_l_xx.sh ${FNN}
        #! up to mem fn
        . ${fn_dr}/$1.sh
        cd "${PPWD}" || {
            echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
            return 1
        }
        return 0
    fi

    #     #* DEBAG CNTL MAST DEFFINE $N -> ... e.c. [$2]
    #     local di=
    #     if [ -n "$N" ]; then
    #         if [ "$N" == "_i" ]; then
    #             di=1
    #         else
    #             di=0
    #         fi
    #     else
    #         di=0
    #     fi

    #* greeting
    # [ $di -eq 1 ] && echo -e "${CYAN}--- $FNN() $* in file://${fn_sh_file} ---${NORMAL}" #started functions

    #* errno
    # cmd arg
    # errno=$?
    # return ${errno}

    #* rename args

    #* check cntl

    #* inname cntl

    #* define local variables

    # _f2d :: insert $1 file after str $2 in ALL (without prevent) file from dir $3
    # _s2d :: into str $1 insert $2 str in (with prevent) file from dir $3
    # _s2f :: reciver_string: $1 inserter_string: $2 in reciver_result_file: $3

    # hint="\$1: \$2: "
    # if _isn_from ${NARGS} LESS LESS+1 "in fs= file://${fn_sh_file}, line=${LINENO}, ${FNN}() : DEMAND 'LESS LESS+1' ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
    #     return 1
    # fi

    #! ptr_path
    # local ptr_path="$1"
    # ptr_path="$(l_01_abs_path "${PPWD}" "ptr_path")"

    #* START fn block from from ${STL_D_PATH}/prc.d/boot_stl_fn.d/__prc/l_00_color2e.prc ------------------
    #[[fn_body]]
#? for copy to help block
if [[ "-h" == "$1" ]]; then
    echo -e "
MAIN: ${FNN} :: stdout stl color
TAGS:
\$1 
[, \$2]
CNTL: 

    -h          : help
    _go         : edit body     : l_02_edit ${fn_nm}
    _rbld       : rebuild fn    : . ${fn_dr}/_rbld_l_xx.sh ${FNN}
    _tst        : tst fn        : l_02_edit ${tst_nm_dr}/${FNN}/exec.tst

    _e_prc      : edit fn.prc   : l_02_edit ${prc_nm}
    _e_tst_dr   : edit tst_nm_dr: l_02_edit ${tst_nm_dr}
    _e_xxx      : edit fl with \"init block\" for all fn : l_02_edit ${fn_dr}/l_00_color2e

RETU: (any {0} | if: [...] {0} | if [...] {1})
EXAM:   ${FNN} [, [, ]]
"
    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
fi

#! stdout fn introduction
echo -e "${ECHO_EXEC}'$FNN $*'${NRM}"

echo -e "

    W WHT
    N BLK
    R RED
    G GRN
    Y YLW
    B BLU
    M MGN
    C CYN
    D GRN

    L LLG
    H HLG

    Z NRM

    F font
    E ground
    X revece font-ground
    P delete font
    



    IRIS short:

    NRM - reset

    LLG - low brightness
    HLG - hight brightness
    
    BLK - black
    RED - red
    GRN - green
    YLW - yellow
    BLU - blue
    MGN - purple
    CYN - cyan
    GRY - grey
    WHT - white


    RVC - revece font-ground
    ULN - under line
    U2L - under 2 line
    ITL - italy
    MIG - mig
    CRS - cros

    BLKG - black ground NG
    REDG - red ground RG 
    GRNG - green ground
    YLWG - yellow ground
    BLUG - blue ground
    MGNG - purple ground
    CYNG - cyan ground
    WHTG - white ground

    FE - delete chars


$FN FN - black $NRM
$FNL FNL - blackl $NRM
$FNH FNH - blackh $NRM

$FR FR - red $NRM
$FRL FRL - redl $NRM
$FRH FRH - redh $NRM

$FG FG - green $NRM
$FGL FGL - greenl $NRM
$FGH FGH - greenh $NRM

$FY FY - yellow $NRMFGH
$FYL FYL - yellowl $NRMFGH
$FYH FYH - yellowh $NRMFGH

$FB FB - blue $NRM
$FBL FBL - bluel $NRM
$FBH FBH - blueh $NRM

$FM FM - purple $NRM
$FML FML - purplel $NRM
$FMH FMH - purpleh $NRM

$FC FC - cyan $NRM
$FCL FCL - cyanl $NRM
$FCH FCH - cyanh $NRM

$FD FD - grey $NRM
$FDL FDL - greyl $NRM
$FDH FDH - greyh $NRM

$FW FW - white $NRM
$FWL FWL - whitel $NRM
$FWH FWH - whiteh $NRM

$ENL ENL - blackl ground $NRM
$ENH ENH - blackg ground $NRM

with font \$FN
$FN$ERL ERL - redl ground $NRM
$FN$ERH ERH - redh ground $NRM

$FN$EGL EGL - greenl ground $NRM
$FN$EGH EGH - greenh ground $NRM

$FN$EYL EYL - yellowl ground $NRM
$FN$EYH EYH - yellowh ground $NRM

$FN$EBL EBL - bluel ground $NRM
$FN$EBH EBH - blueh ground $NRM

$FN$EML EML - purplel ground $NRM
$FN$EMH EMH - purpleh ground $NRM

$FN$ECL ECL - cyanl ground $NRM
$FN$ECH ECH - cyanh ground $NRM

$FN$EDL EDL - greyl ground $NRM
$FN$EDH EDH - greyh ground $NRM

"

local font=(FN FNL FNH
    FR FRL FRH
    FG FGL FGH
    FY FYL FYH
    FB FBL FBH
    FM FML FMH
    FC FCL FCH
    FD FDL FDH
    FW FWL FWH
)

local ground=(ENL ENH
    ERL ERH
    EGL EGH
    EYL EYH
    EBL EBH
    EML EMH
    ECL ECH
    EDL EDH
)

# unset yes
# read -r -p "display ALL? only 'y'" yes
# if [[ "y" == "$yes" ]]; then
for fnt in ${font[@]}; do
    for grn in ${ground[@]}; do
        eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
    done
done
# fi
echo "------------------------------------------AVESOME:------------------------------------------------"

font=(FN FNL FNH
    FR FRL FRH
    FG FGL FGH
    FY FYL FYH
    FB FBL FBH
    FM FML FMH
    FC FCL FCH
    FD FDL FDH
    FW FWL FWH
)

ground=(EDH
)

for fnt in ${font[@]}; do
    for grn in ${ground[@]}; do
        eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
    done
done

font=(FNL FBL FML
)

ground=(ENL ENH
    ERL ERH
    EGL EGH
    EYL EYH
    EBL EBH
    EML EMH
    ECL ECH
    EDL EDH
)

for fnt in ${font[@]}; do
    for grn in ${ground[@]}; do
        eval "echo -e \"\\\$\$fnt\\\$\$grn \$$fnt\$$grn SDFfhn.;90*&\$NRM\" \"\\\$\$fnt\\\$\$grn\\\$RVC \$$fnt\$$grn\$RVC SDFfhn.;90*&\$NRM\""
    done
done
echo -e "

    l_00_echo_err   : ECHO_ERR =$FNL$ERH$RVC \$FNL\$ERH\$RVC $NRM
    l_00_echo_warn  : ECHO_WARN=$FNL$EYH$RVC \$FNL\$EYH\$RVC $NRM
    l_00_echo_info  : ECHO_INFO=$FNL$EGH$RVC \$FNL\$EGH\$RVC $NRM
    l_00_echo_code  : ECHO_CODE=$FNL$ECH$RVC \$FNL\$ECH\$RVC $NRM
    l_00_echo_exec  : ECHO_EXEC=$FNL$EBH$RVC \$FNL\$EBH\$RVC $NRM
    l_00_echo_sys   : ECHO_SYS =$FNL$EMH$RVC \$FNL\$EMH\$RVC $NRM

    l_00_echo_ret1  : ECHO_RET1=$FRL$EDH$RVC \$FRL\$EDH\$RVC $NRM
    l_00_echo_ques  : ECHO_QUES=$FCL$EDH$RVC \$FCL\$EDH\$RVC $NRM

    l_00_echo_succ  : ECHO_SUCC=$FML$EGH$RVC \$FML\$EGH\$RVC $NRM
    l_00_echo_fail  : ECHO_FAIL=$FML$ERH$RVC \$FML\$ERH\$RVC $NRM

    l_00_echo_yes   : ECHO_YES=$FBL$EGH$RVC \$FBL\$EGH\$RVC $NRM
    l_00_echo_no    : ECHO_NO=$FBL$ERH$RVC \$FBL\$ERH\$RVC $NRM

    l_00_echo_fls   : ECHO_FLS=$FNL$ERH \$FNL\$ERH $NRM
    l_00_echo_true  : ECHO_TRUE=$FNL$EGH \$FNL\$EGH $NRM

    $FRL$EDH$RVC \$FRL\$EDH\$RVC $NRM
    $FGL$EDH$RVC \$FGL\$EDH\$RVC $NRM
    $FYL$EDH$RVC \$FYL\$EDH\$RVC $NRM
    $FBL$EDH$RVC \$FBL\$EDH\$RVC $NRM
    $FML$EDH$RVC \$FML\$EDH\$RVC $NRM
    $FCL$EDH$RVC \$FCL\$EDH\$RVC $NRM
    $FDL$EDH$RVC \$FDL\$EDH\$RVC $NRM
    $FWL$EDH$RVC \$FWL\$EDH\$RVC $NRM


    "

    #* END fn block ------------------

    cd "${PPWD}" || {
        echo -e "${ECHO_RET1}'$FNN() $*' in file://${fn_nm} , line=${LINENO} :: NOT_DIR [{PPWD}] '${PPWD}' return 1${NRM}" >&2
        return 1
    }
    return 0
    #* END init block ------------------
}

#! SELF EXEC
# l_00_color2e @
