#!/bin/bash

cd ${PATH_CURR_REPO}/NBash/.arb/util/docker.ram/.grot/game_badtry/exa.d/exa_7.d || plt_exit

cd apache || plt_exit

# docker build . --tag own_php_apache

# docker run -p 8081:80 own_php_apache

docker-compose build
docker-compose up
