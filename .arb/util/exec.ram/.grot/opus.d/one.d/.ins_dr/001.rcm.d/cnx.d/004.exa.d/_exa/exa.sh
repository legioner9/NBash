#!/bin/bash

# ${HOME} ${REPO_PATH}

#!/bin/bash

INPUT_FILE=${REPO_PATH}/NBash/.arb/util/exec.ram/.grot/opus.d/one.d/.ins_dr/001.rcm.d/cnx.d/004.exa.d/_exa/exa.d/file.txt

exec 6<&0

# Redirect stdin to read from a file
exec <"$INPUT_FILE"

# Read the entire file as a single input
content=$(cat)

# Process the input
echo "Read: $content"

exec 0<&6
