#!/bin/sh
#
# build triforce patched qemu for AFL
#

cd qemu

make
cp -f "work/qemu-2.3.0/x86_64-bsd-user/qemu-x86_64" "../../afl-qemu-trace"
cp -f "work/qemu-2.3.0/x86_64-softmmu/qemu-system-x86_64" "../../afl-qemu-system-trace"
cp -f "work/qemu-2.3.0/x86_64-softmmu/qemu-system-x86_64" "../../qemu-system-x86_64"
cp -f "work/qemu-2.3.0/arm-softmmu/qemu-system-arm" "../../qemu-system-arm"
cp -f "work/qemu-2.3.0/aarch64-softmmu/qemu-system-aarch64" "../../qemu-system-aarch64"
