#!/bin/bash

# sed -e '/regex/{r insert.file' -e 'd;}' source # завершится успешн

cd ${REPO_PATH}/NBash/.arb/man/sed_f_into_f.ram/.grot/exa.d/exa_1.d/exa_dir || plt_exit

cp init.file receive.file

# sed -e '/{{in}}/{r insert.file' -e 'd;}' receive.file > tmp
echo -e "${HLIGHT}--- exec: sed -e '\|{{in}}|{r insert.file' -e ';}' receive.file > tmp ---${NORMAL}" #start files
sed -e '\|{{in}}|{r insert.file' -e ';}' receive.file > tmp

mv tmp receive.file

cat receive.file