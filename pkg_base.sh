#/usr/bin/env bash

pacman --needed --noconfirm -S \
    intel-ucode \
    exfat-utils ntfs-3g \
    grub efibootmgr \
    nano neovim \
    mc sudo snapper grub-btrfs inotify-tools locate lshw bat tmux screen fish gpm \
    gnupg pass man pipewire pipewire-docs pipewire-pulse pamixer pulsemixer \
    bzip2 gzip lrzip lz4 lzip lzop xz libarchive cpio p7zip unrar zip unzip


echo "%wheel ALL=(ALL:ALL) ALL" > /etc/sudoers.d/wheel

chown -R :wheel /.snapshots
#mkdir /etc/snapper/configs
cp files/root /etc/snapper/configs
cp files/snapper /etc/conf.d

systemctl enable fstrim.timer
systemctl enable grub-btrfsd
systemctl enable gpm.service