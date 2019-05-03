#!/bin/bash

ROOTFS=rootfs
MOUNT_DIR=/tmp/tmpfs
IMG=rootfs.img
SIZE=64

dd if=/dev/zero of=$IMG bs=1M count=$SIZE
mkfs.ext3 $IMG
mkdir -p $MOUNT_DIR
mount -t ext3 $IMG $MOUNT_DIR -o loop
cp -ra $ROOTFS/* $MOUNT_DIR/.
umount $MOUNT_DIR


