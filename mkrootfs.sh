#!/bin/bash

ROOTFS=rootfs_imx
MOUNT_DIR=/tmp/tmpfs
IMG=rootfs.img

dd if=/dev/zero of=$IMG bs=1M count=$((32))
mkfs.ext3 $IMG
mkdir -p $MOUNT_DIR
mount -t ext3 $IMG $MOUNT_DIR -o loop
cp -ra $ROOTFS/* $MOUNT_DIR/.
umount $MOUNT_DIR


