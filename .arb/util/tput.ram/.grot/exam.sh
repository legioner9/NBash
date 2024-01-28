#!/bin/bash

tput -T screen longname

tput longname

GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

PS1="${GREEN}my prompt${RESET}> "