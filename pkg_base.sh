#/usr/bin/env bash

pacman --needed --noconfirm -S \
    exfat-utils ntfs-3g \
    nano \
    rsync

systemctl enable reflector.timer
systemctl enable fstrim.timer