#!/bin/bash

n=0
while IFS=$'\n' read -r line; do
    echo "$n: $line"
    n=$((n+1))
done <"${1:-/dev/stdin}"
