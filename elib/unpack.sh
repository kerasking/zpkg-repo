#!/bin/sh
cd "$1"
make -j
mkdir -p "$2/include" "$2/lib"
cp -r include/* "$2/include"
cp libelib.so "$2/lib"
