#!/bin/bash

cd ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/soff_find.d/1

ehh find
 
ehh find ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/soff_find.d/1 -printf "%f\n" |  grep '^[^_].*'

ehh find ${REPO_PATH}/NBash/.arb/util/find.ram/.grot/soff_find.d/1 -regex '^[^_].*'


