#!/bin/sh

PKGNAME=r7-office
SKIPREPACK=1
SUPPORTEDARCHES="x86_64"
DESCRIPTION="R7 Office for Linux from the official site"

. $(dirname $0)/common.sh

# https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=r7-office

case $(epm print info -e) in
    AstraLinux*|Debian/*)
        PKG="https://download.r7-office.ru/astra/r7-office.deb"
        ;;
    Ubuntu/*)
        PKG="https://download.r7-office.ru/ubuntu/r7-office.deb"
        ;;
    RedOS/*|AlterOS/*)
        PKG="https://download.r7-office.ru/redos/r7-office.rpm"
        ;;
    AlterOS/*|CentOS/*)
        PKG="https://download.r7-office.ru/centos/r7-office.rpm"
        ;;
    ALTLinux/*)
        PKG="https://download.r7-office.ru/altlinux/r7-office.rpm"
        epm install --skip-installed fonts-ttf-dejavu fonts-ttf-google-crosextra-carlito fonts-ttf-liberation gst-libav gst-plugins-ugly1.0 libX11 libXScrnSaver libcairo libgcc1 libgtk+2 libgtkglext
        ;;
    *)
        fatal "Unsupported distro $(epm print info -e). Ask application vendor for a support."
        ;;
esac

# install with scripts (need for install icons and associations)
# see /etc/eepm/pkgallowscripts.list
# TODO: pack it into the package
epm install "$PKG"
