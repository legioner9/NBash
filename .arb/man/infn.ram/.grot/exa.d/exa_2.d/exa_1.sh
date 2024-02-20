#!/bin/bash
root_dir=${REPO_PATH}/NBash/.arb/man/infn.ram/.grot/exa.d/exa_2.d

unset out_env_var
unset in_fn_this

in_fn_using() {
    echo -e "${BLUE}--- in_fn_using() ---${NORMAL}" #sistem info mesage
   local out_env_var="that: out_env_var"
    . ${root_dir}/in_fn.sh
    in_fn_this
}

type in_fn_this
echo \${out_env_var}=${out_env_var}

in_fn_using

type in_fn_this
echo \${out_env_var}=${out_env_var}
