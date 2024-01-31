#!/bin/bash

for letter in $(grep -o . <<<"$1"); do

    echo "${letter}"

    if [[ "${letter}" = [a-z] ]]; then
        echo "lower"
    fi

done
