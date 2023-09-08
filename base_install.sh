#/usr/bin/env bash

pacstrap -K /mnt base base-devel git linux linux-firmware nano openssh reflector rsync

genfstab -U /mnt >> /mnt/etc/fstab

cp -r /root/archws /mnt/root

arch-chroot /mnt