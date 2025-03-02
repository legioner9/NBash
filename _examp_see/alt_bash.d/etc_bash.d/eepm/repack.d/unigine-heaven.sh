#!/bin/sh -x

# It will be run with two args: buildroot spec
BUILDROOT="$1"
SPEC="$2"

PRODUCT=unigine-heaven
PRODUCTDIR=/opt/unigine-heaven

. $(dirname $0)/common.sh

mkdir -p $BUILDROOT$PRODUCTDIR/
for i in bin data documentation ; do
    mv $BUILDROOT/$i $BUILDROOT$PRODUCTDIR/$i
    subst "s|\"/$i/|\"$PRODUCTDIR/$i/|" $SPEC
done
remove_file /heaven

# support only x86_64
cd $BUILDROOT/$PRODUCTDIR/bin || fatal
for i in *x86* ; do
    [ -d $i ] && remove_dir $PRODUCTDIR/bin/$i && continue
    remove_file $PRODUCTDIR/bin/$i
done

pack_dir $PRODUCTDIR
pack_dir $PRODUCTDIR/bin

#if epm assure patchelf ; then
#for i in *_x64 lib*_x64.so* ; do
#    a= patchelf --set-rpath '$ORIGIN' $i
#done
#fi

mkdir -p $BUILDROOT/usr/bin
cat <<EOF | create_file /usr/bin/heaven
#!/bin/sh
cd $PRODUCTDIR/bin
export LD_LIBRARY_PATH=./x64:\$LD_LIBRARY_PATH
./browser_x64 -config ../data/launcher/launcher.xml
EOF
chmod a+x $BUILDROOT/usr/bin/heaven

add_bin_link_command $PRODUCT /usr/bin/heaven


install_file $PRODUCTDIR/data/launcher/icon.png /usr/share/pixmaps/$PRODUCT.png

cat <<EOF | create_file /usr/share/applications/$PRODUCT.desktop
[Desktop Entry]
Version=1.0
Name=Unigine Heaven 2009
Type=Application
Icon=$PRODUCT
Exec=heaven
Terminal=false
EOF

add_libs_requires
