#!/bin/bash

file_data=${REPO_PATH}/NBash/.arb/util/touch.ram/.grot/exa.d/exa_1.d/data

echo "touch data: 1998-07-08 12:15:26"

touch -mat 199807081215.26 ${file_data}

ftit_t__ ${file_data}

echo "touch now date"

touch ${file_data}

ftit_t__ ${file_data}
