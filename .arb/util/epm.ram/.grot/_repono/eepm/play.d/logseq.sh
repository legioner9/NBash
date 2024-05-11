#!/bin/sh

PKGNAME=logseq
SUPPORTEDARCHES="x86_64"
VERSION="$2"
DESCRIPTION='Logseq - a platform for knowledge management and collaboration. From the official site'
URL="https://github.com/logseq/logseq"

. $(dirname $0)/common.sh

# https://github.com/logseq/logseq/releases/download/0.9.5/Logseq-linux-x64-0.9.5.AppImage
PKGURL=$(epm tool eget --list https://github.com/logseq/logseq/releases/ "Logseq-linux-x64-$VERSION.AppImage" | grep -v nightly | head -n1) || fatal "Can't get package URL"

cd_to_temp_dir
epm tool eget "$PKGURL" || fatal
newname="$(echo *.AppImage | sed -e "s|^Logseq-linux-x64-|$PKGNAME-|" )"
mv -v *.AppImage $newname || exit

epm install "$newname"

