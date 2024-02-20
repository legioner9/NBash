#!/bin/bash
root_dir=${REPO_PATH}/NBash/.arb/man/infile.ram/.grot/exa.d/exa_local_var_in_file.d

out_env_var="x"
unset in_fn_this
unset in_env_var_local
unset in_env_var_global

in_fn_using() {
    echo -e "${BLUE}--- in_fn_using() ---${NORMAL}" #sistem info mesage
    local out_env_var="that: out_env_var"
    . ${root_dir}/in_file.sh

    echo 1
    echo \${in_env_var_local}=${in_env_var_local}
    echo \${in_env_var_global}=${in_env_var_global}
}
echo 2
echo \${in_env_var_local}=${in_env_var_local}
echo \${in_env_var_global}=${in_env_var_global}

echo \${out_env_var}=${out_env_var}

in_fn_using
echo 3

echo \${in_env_var_local}=${in_env_var_local}
echo \${in_env_var_global}=${in_env_var_global}
echo \${out_env_var}=${out_env_var}
