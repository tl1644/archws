#/usr/bin/env bash

pacman --needed --noconfirm -S \
    exfat-utils ntfs-3g \
    nano grub efibootmgr

systemctl enable reflector.timer
systemctl enable fstrim.timer