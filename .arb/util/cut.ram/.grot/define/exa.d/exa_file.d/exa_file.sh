#!/bin/bash
file=${REPO_PATH}/NBash/.arb/util/cut.ram/.grot/define/exa.d/exa_file.d/exa.file

cat ${file}
# Winter: white: snow: frost
# Spring: green: grass: warm
# Summer: colorful: blossom: hot
# Autumn: yellow: leaves: cool
echo
cut -b 1,9 "${file}"
cat "${file}" | cut -b 1,9
# Ww
# Sg
# Sc
# Ay
cut -b 1-7 "${file}" | sort
# Autumn:
# Spring:
# Summer:
# Winter:
cut -c 7-34 "${file}"
# : white: snow: frost
# : green: grass: warm
# : colorful: blossom: hot
# : yellow: leaves: cool
cut -d ':' -f 1 "${file}"
# Winter
# Spring
# Summer
# Autumn
cut -d ':' -f 1,3 "${file}"
# Winter: snow
# Spring: grass
# Summer: blossom
# Autumn: leaves
cut -d ':' -f 1 "${file}" | awk '{print $ 1}' | sort -r
cut -d ':' -f 1 "${file}" | sort -r
# Winter
# Summer
# Spring
# Autumn