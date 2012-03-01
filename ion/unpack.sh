#!/bin/sh
mv "$1" "$1.tar.gz"
mkdir "$1"
tar -C "$1" -xzf "$1.tar.gz"
cd "$1/ion-3-20090110"
sed -i "s!PREFIX=/usr/local!PREFIX=$ZPKG_ROOT!" system.mk
make # -j triggers races
make install
