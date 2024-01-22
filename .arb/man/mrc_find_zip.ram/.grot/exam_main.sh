#!/bin/bash

find . -type f -maxdepth 1 -print0 | xargs -r0 -n1 -P64 -I{} bash -c 'f="{}"; zip "${f%.*}.zip" "$f"'

find . -type f -exec zip zipfile.zip {} +
