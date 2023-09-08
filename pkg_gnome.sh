#/usr/bin/env bash

pacman --needed --noconfirm -S \
    gnome gnome-extra gnome-tweaks

systemctl enable gdm.service