#!/bin/bash
# 6 дескр сохр ссылку на 0 
exec 6<&0

exec 0<${REPO_PATH}/NBash/.arb/man/stream.ram/.grot/exa.d/exa_1.d/testfile
count=1
while read -r line; do
    echo "Line #$count: $line"
    count=$(($count + 1))
done

# возвращаем ссылку 6 на 0
exec 0<&6
