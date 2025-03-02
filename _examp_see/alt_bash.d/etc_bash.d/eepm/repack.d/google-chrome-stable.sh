#!/bin/sh -x
# It will run with two args: buildroot spec
BUILDROOT="$1"
SPEC="$2"

PRODUCT=google-chrome
PRODUCTCUR=google-chrome-stable
PRODUCTDIR=/opt/google/chrome

. $(dirname $0)/common-chromium-browser.sh

add_conflicts google-chrome-preinstall

set_alt_alternatives 65

copy_icons_to_share

cleanup

add_bin_commands

use_system_xdg

subst "s|^Summary:.*|Summary: Google Chrome browser|" $SPEC

# TODO: report to the upstream
subst 's|Name=Google Chrome|Name=Google Chrome Web Browser\nName[ru]=Веб-браузер Google Chrome|' $BUILDROOT/usr/share/applications/*.desktop
subst 's|GenericName=Web Browser|GenericName=Google Chrome Web Browser|' $BUILDROOT/usr/share/applications/*.desktop
subst 's|GenericName\[ru\]=Веб-браузер|GenericName[ru]=Веб-браузер Google Chrome|' $BUILDROOT/usr/share/applications/*.desktop

fix_desktop_file /usr/bin/google-chrome-stable

add_chromium_deps
