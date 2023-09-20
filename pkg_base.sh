#/usr/bin/env bash

pacman --needed --noconfirm -S \
    intel-ucode \
    exfat-utils ntfs-3g \
    grub efibootmgr \
    nano neovim \
    mc sudo snapper grub-btrfs locate lshw bat tmux screen fish gpm \
    gnupg pass man pipewire pipewire-docs pipewire-pulse pamixer pulsemixer \
    bzip2 gzip lrzip lz4 lzip lzop xz libarchive cpio p7zip unrar zip unzip

# cp files/sudoers /etc

echo "%wheel ALL=(ALL:ALL) ALL" > /etc/sudoers.d/wheel

#umount /.snapshots
#rm -rf /.snapshots
chown -R :wheel /.snapshots

systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable grub-btrfsd
systemctl enable gpm.service