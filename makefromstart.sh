
#!/bin/bash

ROOTFS=rootfs

mkdir -p $ROOTFS
# dir
mkdir -p $ROOTFS/proc/
mkdir -p $ROOTFS/sys/
mkdir -p $ROOTFS/tmp/
mkdir -p $ROOTFS/root/
mkdir -p $ROOTFS/var/
mkdir -p $ROOTFS/lib/
mkdir -p $ROOTFS/mnt/
mkdir -p $ROOTFS/dev/
mkdir -p $ROOTFS/home/
mkdir -p $ROOTFS/home/latelee
mkdir -p $ROOTFS/etc/init.d/

# busybox
cp -a ../busybox/_install/* $ROOTFS/.

git clone https://github.com/mahadevvinay/Embedded_Linux_Files.git

# library

# device
sudo mknod $ROOTFS/dev/console c 5 1
sudo mknod $ROOTFS/dev/null c 1 3

# etc
cp Embedded_Linux_Files/fstab $ROOTFS/etc/
cp Embedded_Linux_Files/inittab $ROOTFS/etc/
cp Embedded_Linux_Files/rcS $ROOTFS/etc/init.d/

chmod 777 $ROOTFS/etc/init.d/*


