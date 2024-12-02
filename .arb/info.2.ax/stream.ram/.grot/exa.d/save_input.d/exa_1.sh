#!/bin/bash
# 6 дескр сохр ссылку на 0
# cat ${REPO_PATH}/NBash/.arb/info.ax/stream.ram/.grot/exa.d/save_input.d/testfile
exec 6<&0

exec 0<${REPO_PATH}/NBash/.arb/info.ax/stream.ram/.grot/exa.d/save_input.d/testfile
count=1
while read -r line; do
    echo "Line #$count: $line"
    count=$(($count + 1))
done

# возвращаем ссылку 6 на 0
exec 0<&6
exec 6>&-

lsof -a -p $$ -d 1,2,3,4,5,6
