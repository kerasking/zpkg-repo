#!/bin/sh
cd "$1"
make -C src -j
mkdir -p "$2/include" "$2/lib"
cp -r include/* "$2/include"
cp src/libectun.so "$2/lib"
