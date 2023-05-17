#!/usr/bin/env bash

until [[ $COMPRESSION_ENABLED =~ (y|n) ]]; do
    read -rp"Enable compression? [y/n]: " -e -i n COMPRESSION_ENABLED
done

until [[ $COMPRESSION_CHOICE =~ ^[1-3]$ ]]; do
    read -rp"Compression algorithm [1-3]: " -e -i 1 COMPRESSION_CHOICE
done
