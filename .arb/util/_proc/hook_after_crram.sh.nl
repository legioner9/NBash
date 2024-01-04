#!/bin/bash

#! global: ram_name_to_create

cd ${ram_to_create}/.grot ||
    {
        plt_exit "EXEC_FAIL: cd file://${ram_to_create}/.grot return 3"
        return 3
    }

touch anc.man
mkdir soff_${ram_}.d

cd soff_${ram_}.d ||
    {
        plt_exit "in ${FNN} : NOT_DIR : 'soff_${ram_}.d' return 3"
        return 3
    }

echo '#!/bin/bash' >soff_${ram_}_1.sh

cd ..

mkdir exa_${ram_}.d

cd exa_${ram_}.d ||
    {
        plt_exit "in ${FNN} : NOT_DIR : 'exa_${ram_}.d' return 3"
        return 3
    }

echo '#!/bin/bash' >exa_${ram_}_1.sh

cd ..

mkdir pdf_${ram_}.d

cd pdf_${ram_}.d ||
    {
        plt_exit "in ${FNN} : NOT_DIR : 'soff_${ram_}.d' return 3"
        return 3
    }

touch 0
