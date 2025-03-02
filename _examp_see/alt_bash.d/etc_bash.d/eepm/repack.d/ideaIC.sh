#!/bin/sh -x

# It will be run with two args: buildroot spec
BUILDROOT="$1"
SPEC="$2"

PRODUCT=idea
PRODUCTCUR=idea-IC

. $(dirname $0)/common.sh

add_conflicts ideaIU

subst "s|^Group:.*|Group: Development/Tools|" $SPEC
#subst "s|^License: unknown$|License: GPLv2|" $SPEC
subst "s|^URL:.*|URL: https://www.jetbrains.com/idea/|" $SPEC
subst "s|^Summary:.*|Summary: IntelliJ IDEA Community Edition – the Leading Java and Kotlin IDE|" $SPEC

move_to_opt "/$PRODUCTCUR-*"
add_bin_link_command $PRODUCT $PRODUCTDIR/bin/$PRODUCT.sh
add_bin_link_command $PRODUCTCUR $PRODUCT

cat <<EOF | create_file /usr/share/applications/$PRODUCT.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=IntelliJ IDEA Community Edition
Comment=The Leading Java and Kotlin IDE
Exec=$PRODUCT %f
Icon=$PRODUCT
Terminal=false
StartupNotify=true
StartupWMClass=jetbrains-idea
Categories=Development;IDE
EOF

install_file $PRODUCTDIR/bin/$PRODUCT.png /usr/share/pixmaps/$PRODUCT.png
install_file $PRODUCTDIR/bin/$PRODUCT.svg /usr/share/pixmaps/$PRODUCT.svg

# kind of hack
subst 's|%dir "'$PRODUCTDIR'/"||' $SPEC
subst 's|%dir "'$PRODUCTDIR'/bin/"||' $SPEC
subst 's|%dir "'$PRODUCTDIR'/lib/"||' $SPEC
subst 's|%dir "'$PRODUCTDIR'/plugins/"||' $SPEC

pack_dir $PRODUCTDIR/
pack_dir $PRODUCTDIR/bin/
pack_dir $PRODUCTDIR/lib/
pack_dir $PRODUCTDIR/plugins/
