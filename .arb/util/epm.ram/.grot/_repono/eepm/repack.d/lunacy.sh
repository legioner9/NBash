#!/bin/sh -x

# It will be run with two args: buildroot spec
BUILDROOT="$1"
SPEC="$2"

PRODUCT=lunacy
PRODUCTCUR=Lunacy
PRODUCTDIR=/opt/icons8/lunacy

. $(dirname $0)/common.sh

add_bin_link_command $PRODUCTCUR
add_bin_link_command $PRODUCT $PRODUCTCUR

fix_desktop_file /opt/icons8/lunacy/Lunacy $PRODUCT
fix_desktop_file /opt/icons8/lunacy/Assets/LunacyLogo.png $PRODUCT
install_file /opt/icons8/lunacy/Assets/LunacyLogo.png /usr/share/pixmaps/$PRODUCT.png

add_libs_requires

