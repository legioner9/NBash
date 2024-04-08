#!/bin/bash

cd ${HOME}/REPOBARE/_repo/NBash/.arb/man/condition.ram/.grot/exa.d/cmp_f_dir.d/dir_tst || echo "NOT_DIR : ${HOME}/REPOBARE/_repo/NBash/.arb/man/condition.ram/.grot/exa.d/cmp_f_dir.d/dir_tst" >&2

touch dir_t/0
sleep 1
touch file_t

if [[ dir_t -ot file_t ]]; then
    echo "1 true"
fi

sleep 1
touch dir_t/0

if [[ dir_t -nt file_t ]]; then
    echo "2 true"
else
    echo "2 false"
fi
