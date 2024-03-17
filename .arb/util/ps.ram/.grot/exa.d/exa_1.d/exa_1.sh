#!/bin/bash

read -p "DO? : (sleep 1 & exec /bin/sleep 7200)&"

(
    sleep 1 &
    exec /bin/sleep 7200
) &

read -p "DO? : ps aux | grep Z"

ps aux | grep Z

read -p "DO? : ps -A -o stat,ppid | grep -e '[zZ]'"

ps -A -o stat,ppid | grep -e '[zZ]'

read -p "DO? : ps -A -o stat,ppid | grep -e '[zZ]'| awk '{ print \$2 }'"

ps -A -o stat,ppid | grep -e '[zZ]' | awk '{ print $2 }'

read -p "DO? : kill -9 \$(ps -A -o stat,ppid | grep -e '[zZ]'| awk '{ print $2 }')"

kill -9 $(ps -A -o stat,ppid | grep -e '[zZ]' | awk '{ print $2 }')
