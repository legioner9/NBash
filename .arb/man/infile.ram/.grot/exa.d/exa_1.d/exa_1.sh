#!/bin/bash
root_dir=${REPO_PATH}/NBash/.arb/man/infile.ram/.grot/exa.d/exa_1.d

out_env_var="x"
unset in_fn_this

in_fn_using() {
    echo -e "${BLUE}--- in_fn_using() ---${NORMAL}" #sistem info mesage
   local out_env_var="that: out_env_var"
    . ${root_dir}/in_file.sh
}


echo \${out_env_var}=${out_env_var}

in_fn_using


echo \${out_env_var}=${out_env_var}
