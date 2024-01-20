#!/bin/bash

color()(set -o pipefail;"$@" 2> >(sed $'s,.*,\e[31m&\e[m,'>&2))
export -f color

color ls csda
