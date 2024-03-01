FROM php:7.2-apache
# Указываем рабочую папку
WORKDIR /home/st/REPOBARE/_repo/NBash/.arb/util/docker.ram/.grot/game_badtry/exa.d/exa_6.d/html
# Копируем все файлы проекта в контейнер
COPY . /var/www/html
RUN apt-get update && apt-get upgrade -y && apt-get install -y curl 
RUN echo "Hello, Docker Tutorial"
EXPOSE 80