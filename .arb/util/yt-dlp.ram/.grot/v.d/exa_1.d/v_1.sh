#!/bin/bash

mkdir ${HOME}/v

cd ${HOME}/v

until yt-dlp -c https://www.youtube.com/playlist?list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co; do
    :
done
