#!/bin/sh
cd "$1"
make -C src -j ZPKG_CFLAGS="$ZPKG_CFLAGS" ZPKG_LDFLAGS="$ZPKG_LDFLAGS"
mkdir -p "$2/bin" "$2/doc/uircd" "$2/etc/uircd"
cp -r doc/* "$2/doc/uircd"
cp -r etc/* "$2/etc/uircd"
cp src/uircd "$2/bin"
