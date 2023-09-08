#/usr/bin/env bash

BOOTPART=${1}
SYSPART=${2}

mkfs.btrfs -L SYSTEM ${SYSPART}

mount ${SYSPART} /mnt
cd /mnt
btrfs su cr @
btrfs su cr @cache
btrfs su cr @home
btrfs su cr @images
btrfs su cr @log
btrfs su cr @snapshots
cd ~
umount /mnt

mount -o compress=zstd:1,noatime,subvol=@ ${SYSPART} /mnt
mkdir -p /mnt/{boot/efi,home,.snapshots,var/{cache,log,lib/libvirt/images}}

mount -o compress=zstd:1,noatime,subvol=@home ${SYSPART} /mnt/home
mount -o compress=zstd:1,noatime,subvol=@snapshots ${SYSPART} /mnt/.snapshots
mount -o compress=zstd:1,noatime,subvol=@cache ${SYSPART} /mnt/var/cache
mount -o compress=zstd:1,noatime,subvol=@log ${SYSPART} /mnt/var/log
mount -o compress=zstd:1,noatime,subvol=@images ${SYSPART} /mnt/var/lib/libvirt/images

mount BOOTPART=${1} /mnt/boot/efi