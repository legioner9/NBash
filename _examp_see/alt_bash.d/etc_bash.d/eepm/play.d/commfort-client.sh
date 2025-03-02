#!/bin/sh

PKGNAME=commfort-client
SUPPORTEDARCHES="x86_64 x86"
# just a concept
DESCRIPTION='' #"CommFort WINE Edition from the official site"
URL="https://www.commfort.com/ru/article-commfort-linux.shtml"

. $(dirname $0)/common.sh

warn_version_is_not_supported

VERSION="$(eget -O- https://www.commfort.com/ru/download.shtml  | grep "Версия .* от .* г." | head -n2 | tail -n1 | sed -e 's|.*Версия ||' -e 's| от .*||')"
[ -n "$VERSION" ] || fatal "Can't get version."

# TODO: check: https://www.commfort.com/download/commfort_client.msi
PKGURL="https://www.commfort.com/download/commfort_client_wine.exe"

install_pack_pkgurl $VERSION
