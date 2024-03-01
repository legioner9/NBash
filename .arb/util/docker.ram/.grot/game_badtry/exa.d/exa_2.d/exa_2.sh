#!/bin/bash

cd ${PATH_CURR_REPO}/NBash/.arb/util/docker.ram/.grot/game_badtry/exa.d/exa_2.d || plt_exit

docker build . --tag pyramid
docker images
# docker run pyramid
docker run pyramid ls