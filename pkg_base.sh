#/usr/bin/env bash

pacman --needed --noconfirm -S \
    exfat-utils ntfs-3g \
    nano grub efibootmgr \
    mc sudo

cp files/sudoers /etc

systemctl enable reflector.timer
systemctl enable fstrim.timer