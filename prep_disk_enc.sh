#/usr/bin/env bash

BOOTPART=${1}1
SYSPART=${1}2

parted --script ${1} \
mklabel gpt \
mkpart primary fat32 1MiB 512MiB \
mkpart primary ext2 513MiB 100%

mkfs.vfat -n BOOT ${BOOTPART}

cryptsetup luksFormat --type luks1 ${SYSPART}
cryptsetup open ${SYSPART} cryptroot

fs_uuid=$(blkid -o value -s UUID ${SYSPART})
sed -i "s/<<<DUMMY>>>/cryptdevice=UUID=${fs_uuid}:cryptroot cryptkey=rootfs:/root/cryptpart.keyfile" files/grub

dd bs=512 count=4 if=/dev/random of=/root/cryptpart.keyfile iflag=fullblock
chmod 000 /root/cryptpart.keyfile
cryptsetup -v luksAddKey ${SYSPART} /root/cryptpart.keyfile

echo Disk prepared.
echo Boot-Partition: ${BOOTPART}
echo System-Partition: "/dev/mapper/cryptroot"
echo Crypt-Partition UUID: ${fs_uuid}