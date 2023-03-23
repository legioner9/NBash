#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/start/communis/NBash/themes/pwd/dir/test.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

. "$HOME/start/communis/NBash/themes/pwd/pwd_fn.sh"

ppwd
pwd

unset filename