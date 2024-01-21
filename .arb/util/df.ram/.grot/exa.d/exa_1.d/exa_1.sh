#!/bin/bash

echo "all mount fs :"
echo -e "${HLIGHT}--- df ---${NORMAL}" #start files
df
echo -e "${HLIGHT}--- df -h ---${NORMAL}" #start files
df -h

echo "all kernel mount fs :"
echo -e "${HLIGHT}--- df -a ---${NORMAL}" #start files
df -a

echo -e "${HLIGHT}--- df -x tmpfs ---${NORMAL}" #start files
df -x tmpfs

echo -e "${HLIGHT}--- df -x devtmpfs -x tmpfs ---${NORMAL}" #start files
df -x devtmpfs -x tmpfs

echo "with type fs :"
echo -e "${HLIGHT}--- df -t ext4 ---${NORMAL}" #start files
df -t ext4

echo "for exactly type fs :"
echo -e "${HLIGHT}--- df -t ext3 ---${NORMAL}" #start files
df -t ext3

echo "with type fs :"
echo -e "${HLIGHT}--- df -t ext2 ---${NORMAL}" #start files
df -t ext2

echo " :"
echo -e "${HLIGHT}--- df -h /home/ ---${NORMAL}" #start files
df -h /home/

echo "with inode :"
echo -e "${HLIGHT}--- df -hi /home/ ---${NORMAL}" #start files
df -hi /home/

echo "define type fs :"
echo -e "${HLIGHT}--- df -Th ---${NORMAL}" #start files
df -Th
