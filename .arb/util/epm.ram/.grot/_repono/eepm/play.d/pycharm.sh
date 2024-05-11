#!/bin/sh

PKGNAME=pycharm-community
SUPPORTEDARCHES="x86_64 aarch64"
VERSION="$2"
DESCRIPTION="PyCharm CE — The Python IDE for Professional Developers"

. $(dirname $0)/common-jetbrains.sh

PKGURL="$(get_jetbrains_pkgurl PCC python)"

epm install $PKGURL
