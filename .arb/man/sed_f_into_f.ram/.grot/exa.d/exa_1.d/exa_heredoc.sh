#!/bin/bash

# sed -i '' '/\[PHP]/r '<(cat << END_HEREDOC
# [xdebug]
# zend_extension=/usr/lib/php/20151226/xdebug.so
# xdebug.remote_host = localhost
# xdebug.idekey = "PHPSTORM"
# xdebug.remote_autostart = 1
# END_HEREDOC
# ) php.ini

cd ${REPO_PATH}/NBash/.arb/man/sed_f_into_f.ram/.grot/exa.d/exa_1.d/exa_dir || plt_exit

cp init.file receive.file

sed -i '' '/{{in}}/r '<(echo -e "
   ddd
    rrr"
) receive.file

cat receive.file
