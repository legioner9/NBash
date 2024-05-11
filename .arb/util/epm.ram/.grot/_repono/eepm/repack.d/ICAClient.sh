#!/bin/sh -x
# It will run with two args: buildroot spec
BUILDROOT="$1"
SPEC="$2"

# Fix macro in file list
subst 's|%_h32bit|%%_h32bit|g' $SPEC

# Remove unmets
subst '1i%filter_from_requires /\\(SUNWut\\|LIBJPEG_6.2\\|kdelibs\\|killproc\\|start_daemon\\)/d' $SPEC
subst '1i%filter_from_requires /^libc.so.6(GLIBC_PRIVATE).*/d' $SPEC


# Add requires of lsb-init for init script
subst '/Group/Requires: lsb-init' $SPEC

set_autoreq 'yes'
