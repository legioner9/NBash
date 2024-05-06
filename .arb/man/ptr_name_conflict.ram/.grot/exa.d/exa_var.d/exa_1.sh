#!/bin/bash

# $ foo=hello
# $ var=foo
# $ echo "${!var+$var is set, its value is ${!var}}"
# foo is set, its value is hello

fnn() {

    local res=0

    arg_1=$1

    echo "$arg_1=33"
    
    eval $arg_1=33

    echo "${arg_1}=${!arg_1}"

}

res=22

fnn res

echo ${res}
