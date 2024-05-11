#!/bin/sh

PKGNAME=bitwarden
SUPPORTEDARCHES="x86_64"
VERSION="$2"
DESCRIPTION="Bitwarden desktop from the official site"

. $(dirname $0)/common.sh

arch="$(epm print info --distro-arch)"
pkgtype="$(epm print info -p)"

case "$pkgtype" in
    rpm|deb)
        ;;
    *)
        pkgtype="deb"
        ;;
esac

#https://github.com/bitwarden/clients/releases/download/desktop-v2023.4.0/Bitwarden-2023.4.0-amd64.deb
#https://github.com/bitwarden/clients/releases/download/desktop-v2023.4.0/Bitwarden-2023.4.0-x86_64.rpm

PKGURL=$(epm tool eget --list --latest https://github.com/bitwarden/clients/releases $(epm print constructname Bitwarden "$VERSION*" $arch $pkgtype "-" "-")) || fatal "Can't get package URL"

# we have workaround for their postinstall script, so always repack rpm package
[ "$pkgtype" = "deb" ] || repack='--repack'

epm install $repack "$PKGURL" || exit

