#!/bin/sh

PKGNAME=piktomir
SUPPORTEDARCHES="x86_64"
VERSION="$2"
DESCRIPTION="Piktomir ПиктоМир Младший брат КуМира"
URL="https://piktomir.ru/"

. $(dirname $0)/common.sh

warn_version_is_not_supported

PKGURL="https://dl.piktomir.ru/PiktoMir-x86_64.AppImage"

install_pack_pkgurl
