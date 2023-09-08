#/usr/bin/env bash

BOOTPART=${1}1
SYSPART=${1}2

parted --script ${1} \
mklabel gpt \
mkpart primary fat32 1MiB 512MiB \
mkpart primary btrfs 513MiB 100%

mkfs.vfat -n BOOT ${BOOTPART}

echo Disk prepared.
echo Boot-Partition: ${BOOTPART}
echo System-Partition: ${SYSPART}