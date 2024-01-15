#!/bin/bash

echo -e "${HLIGHT}--- find /home/st/REPOBARE/_repo/tgu -type f -size +1M -not -path \"/home/st/REPOBARE/_repo/tgu/.git/*\" ---${NORMAL}" #start files
find /home/st/REPOBARE/_repo/tgu -type f -size +1M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*"

if ! find /home/st/REPOBARE/_repo/tgu -type f -size +1M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*"; then
    echo FALSE 0
else
    echo TRUE 0
fi

if find /home/st/REPOBARE/_repo/tgu -type f -size +1M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*"; then
    echo TRUE 1
else
    echo FALSE 1
fi

echo -e "${HLIGHT}--- find /home/st/REPOBARE/_repo/tgu -type f -size +45M -not -path \"/home/st/REPOBARE/_repo/tgu/.git/*\" ---${NORMAL}" #start files
find /home/st/REPOBARE/_repo/tgu -type f -size +45M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*"

if ! find /home/st/REPOBARE/_repo/tgu -type f -size +45M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*"; then
    echo FALSE 2
else
    echo TRUE 2
fi

if find /home/st/REPOBARE/_repo/tgu -type f -size +45M -not -path "/home/st/REPOBARE/_repo/tgu/.git/*"; then
    echo TRUE 3
else
    echo FALSE 3
fi
