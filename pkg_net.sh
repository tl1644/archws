#/usr/bin/env bash

pacman --needed --noconfirm -S \
    networkmanager avahi dnsutils firewalld\
    net-tools netctl whois wget openssh

systemctl enable NetworkManager
systemctl enable avahi-daemon
systemctl enable firewalld.service
#systemctl enable sshd