#!/bin/sh

sed -E -i 's|^prefix\s+= (.*)|prefix = '"$PREFIX"'|' src/Makefile
cd src
make -j $CPU_COUNT
make install

