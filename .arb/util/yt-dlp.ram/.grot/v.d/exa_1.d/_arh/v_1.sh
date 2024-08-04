#!/bin/bash

mkdir ${HOME}/v

cd ${HOME}/v

( 1 2 3 4 5 6 14 15 24 26 44 )

until yt-dlp https://www.youtube.com/playlist?list=PL6TsfzLhXW-EZH0qfKIhbr6rsMkXTt5co; do
    :
done
