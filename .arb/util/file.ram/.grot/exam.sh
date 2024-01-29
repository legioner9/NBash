#!/bin/bash

echo -e "${HLIGHT}--- file ~/tmp/* ---${NORMAL}" #start files
file ~/tmp/*

echo -e "${HLIGHT}--- file -b ~/tmp/* ---${NORMAL}" #start files
file -b ~/tmp/*

echo -e "${HLIGHT}--- file -b ~/tmp ---${NORMAL}" #start files
file -b ~/tmp
