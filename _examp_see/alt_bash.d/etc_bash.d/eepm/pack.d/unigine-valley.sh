#!/bin/sh

TAR="$1"
RETURNTARNAME="$2"

OPKGNAME="Unigine_Valley"

. $(dirname $0)/common.sh

# args: <run file> <output tar>
convert_makeself_to_tar()
{
    offset=`head -n 403 "$1" | wc -c | tr -d " "`
    dd if="$1" ibs=$offset skip=1 obs=1024 conv=sync status=progress | gzip -cd > "$2"
}

BASENAME="$(basename $TAR .run | tr "[A-Z_]" "[a-z-]")"

convert_makeself_to_tar $TAR $BASENAME.tar

cat <<EOF >$BASENAME.tar.eepm.yaml
name: $PRODUCT
group: Graphics
license: Proprietary
url: https://benchmark.unigine.com/valley
summary: Unigine Valley (Unigine Benchmark)
description: Unigine Valley (Unigine Benchmark).
EOF

return_tar $BASENAME.tar

