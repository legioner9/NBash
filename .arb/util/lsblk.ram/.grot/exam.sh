#!/bin/bash

echo -e "${HLIGHT}--- lsblk ---${NORMAL}" #start files
lsblk

echo -e "${HLIGHT}--- lsblk -f ---${NORMAL}" #start files
lsblk -f

echo -e "${HLIGHT}--- lsblk -o NAME,SIZE,TYPE,MOUNTPOINTS,MODEL,SERIAL ---${NORMAL}" #start files
lsblk -o NAME,SIZE,TYPE,MOUNTPOINTS,MODEL,SERIAL