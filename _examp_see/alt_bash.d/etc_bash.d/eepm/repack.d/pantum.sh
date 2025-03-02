#!/bin/sh -x
# It will run with two args: buildroot spec
BUILDROOT="$1"

SPEC="$2"

PRODUCT=pantum

. $(dirname $0)/common.sh

if [ "$(epm print info -b)" = "64" ] ; then
    remove_dir /usr/lib/sane
    # keep /usr/lib64
else
    remove_dir /usr/lib64/sane
    # keep /usr/lib
fi

if [ "$(epm print info -p)" = "rpm" ] ; then
    mv usr/lib/x86_64-linux-gnu usr/lib64
    subst 's|/usr/lib/x86_64-linux-gnu|/usr/lib64|' $SPEC
fi

# Debian style duplicates
remove_dir /usr/lib/aarch64-linux-gnu
remove_dir /usr/lib/arm-linux-gnueabihf
remove_dir /usr/lib/i386-linux-gnu
remove_dir /usr/lib/x86_64-linux-gnu

# duplicates main files
remove_dir /usr/local

add_libs_requires
