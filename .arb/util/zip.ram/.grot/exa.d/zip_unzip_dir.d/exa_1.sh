#!/bin/bash

cd /home/st/REPOBARE/_repo/NBash/.arb/util/zip.ram/.grot/exa.d/zip_unzip_dir.d || plt_exit

zip -ro zipped.d.zip dir_for_zip.d

cp zipped.d.zip /home/st/REPOBARE/_repo/NBash/.arb/util/zip.ram/.grot/exa.d/zip_unzip_dir.d/dir_for_unziped.d

cd dir_for_unziped.d || plt_exit

unzip zipped.d.zip
