#!/bin/bash
pacstrap /mnt - < pkglist.txt

genfstab -U /mnt >> /mnt/etc/fstab

cp postchroot.sh /mnt/root/

rm /mnt/etc/hostname
rm /mnt/etc/hosts
rm /mnt/etc/locale.conf
rm /mnt/etc/locale.gen
rm /mnt/etc/vconsole.conf
rm /mnt/etc/sudoers

arch-chroot /mnt
