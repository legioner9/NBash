#!/bin/bash

dir_003="${REPO_PATH}"/NBash/.arb/util/zip.ram/.grot/stream/exa.d/stream.d/003
dir_src=${dir_003}/src.d
dir_dist=${dir_003}/dist.d

rm ${dir_dist}/dist.zip
rm ${dir_dist}/from_zip.file

mv ${dir_src}/_src.file ${dir_src}/src.file

< ${dir_src}/src.file zip > ${dir_dist}/dist.zip

cd ${dir_dist} || plt_exit

unzip ${dir_dist}/dist.zip

< ${dir_dist}/dist.zip unzip > ${dir_dist}/from_zip_2.file