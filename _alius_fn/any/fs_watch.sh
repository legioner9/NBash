#!/bin/bash
while true; do
    inotifywait -r -e MODIFY КАТАЛОГ && ТВОЯ_КОМАНДА
done
