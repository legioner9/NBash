#!/bin/bash

cd ${PATH_CURR_REPO}/NBash/.arb/util/docker.ram/.grot/game_badtry/exa.d/exa_3.d || plt_exit

# docker build . --tag pyramid
docker images
docker run pyramid
docker run pyramid php /cli.php 9
# docker run pyramid ls