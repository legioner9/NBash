#!/bin/bash

cd ${PATH_CURR_REPO}/NBash/.arb/util/docker.ram/.grot/game_badtry/exa.d/exa_5.d || plt_exit

rm -fv testfile

echo -e "
echo "in docker"
echo "-- ls --"
ls
echo "-- ls mounted --"
ls mounted
echo "-- touch mounted/testfile --"
touch mounted/testfile
echo "-- ls mounted --"
ls mounted
echo "-- exit --"
exit" > indck_file.sh

docker run -it --rm -v "$(pwd)":/mounted  ubuntu:18.10 /bin/bash  /mounted/indck_file.sh

echo "in host:"
ls