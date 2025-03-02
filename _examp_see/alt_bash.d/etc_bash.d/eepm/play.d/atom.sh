#!/bin/sh

PKGNAME=atom
SUPPORTEDARCHES="x86_64"
VERSION="$2"
PRODUCTALT="'' beta"
#DESCRIPTION="The hackable text editor from the official site"
# official sunset on December 15, 2022.
DESCRIPTION=''
URL="https://github.blog/2022-06-08-sunsetting-atom/"

. $(dirname $0)/common.sh

#arch=$(epm print info --distro-arch)
#pkgtype=$(epm print info -p)
arch=amd64
pkgtype=deb

notbeta=''
if [ "$PKGNAME" = "atom" ] ; then
    notbeta='-v'
fi

if [ "$VERSION" != "*" ] ; then
    [ "$PKGNAME" = "atom-beta" ] && VERSION="$VERSION-beta0"
    PKGURL="https://github.com/atom/atom/releases/download/v$VERSION/atom-$arch.$pkgtype"
else
    PKGURL=$(eget --list https://github.com/atom/atom/releases/ "atom-$arch.$pkgtype" | grep $notbeta -- "-beta" | head -n1)
fi

install_pkgurl
