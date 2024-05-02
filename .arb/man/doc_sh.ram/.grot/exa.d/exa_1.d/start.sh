#!/bin/bash

cd ${HOME}/REPOBARE/_repo/NBash/.arb/man/doc_sh.ram/.grot/exa.d/exa_1.d || echo "cd fail" >&2

pod2html exa_2 > 1.html
pod2man exa_2 > 1.man
pod2usage exa_2 > 1.usage
