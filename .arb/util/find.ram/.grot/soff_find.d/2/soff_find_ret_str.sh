#!/bin/bash

echo -e "${HLIGHT}--- find /home/st/REPOBARE/_repo/tgu -type f -size +1M -not -path \"/home/st/REPOBARE/_repo/tgu/.git/*\" ---${NORMAL}" #start files
find /home/st/REPOBARE/_repo/tgu -type f -size +1M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*"

str1="$(find /home/st/REPOBARE/_repo/tgu -type f -size +1M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*")"

if [ -n "${str1}" ]; then
    echo FALSE 0
else
    echo TRUE 0
fi

if [ -z "${str1}" ]; then
    echo TRUE 1
else
    echo FALSE 1
fi

echo -e "${HLIGHT}--- find /home/st/REPOBARE/_repo/tgu -type f -size +45M -not -path \"/home/st/REPOBARE/_repo/tgu/.git/*\" ---${NORMAL}" #start files
find /home/st/REPOBARE/_repo/tgu -type f -size +45M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*"

str2="$(find /home/st/REPOBARE/_repo/tgu -type f -size +45M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*")"

if [ -n "${str2}" ]; then
    echo FALSE 0
else
    echo TRUE 0
fi

if [ -z "${str2}" ]; then
    echo TRUE 1
else
    echo FALSE 1
fi
