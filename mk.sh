#!/bin/bash

rm zImage
make clean
make -j5 arch=arm
cp arch/arm/boot/zImage zImage_in
./mkshbootimg.py zImage zImage_in boot.img recovery.cm10.tar.xz
../../maketar.sh

