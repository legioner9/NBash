#!/bin/bash

cd ${PATH_CURR_REPO}/NBash/.arb/util/docker.ram/.grot/game_badtry/exa.d/exa_9.d || plt_exit

cd apache || plt_exit

# docker-compose exec {CONTAINER_NAME} {COMMAND}
# где, вместо {CONTAINER_NAME} нужно записать имя контейнера, под которым он записан в сервисах;
# а вместо {COMMAND} - желаемую команду.

docker-compose down  # остановим контейнеры
docker-compose up -d # здесь используется опция -d которая сообщает, что контейнер должен висеть в режиме демона
docker-compose exec app_apache_8081 apache2 -v
