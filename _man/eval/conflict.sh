#!/bin/bash

rand_value=rand_$(printf '%s' $(echo "$RANDOM" | md5sum) | cut -c 1-20)

eval ${rand_value}="my_value"

echo ${!rand_value}

f1() {

    rand_value=rand_$(printf '%s' $(echo "$RANDOM" | md5sum) | cut -c 1-20)

    eval ${rand_value}="from f1"

    echo 

}

f2() {

    rand_value=rand_$(printf '%s' $(echo "$RANDOM" | md5sum) | cut -c 1-20)

    eval ${rand_value}="from f2"

    f1

}
