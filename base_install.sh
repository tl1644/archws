#/usr/bin/env bash

pacstrap -K /mnt base linux linux-firmware reflector

genfstab -U /mnt >> /mnt/etc/fstab

cp -r /root/archws /mnt/root

arch-chroot /mnt