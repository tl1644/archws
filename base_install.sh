#/usr/bin/env bash

pacstrap -K /mnt base linux linux-firmware reflector rsync btrfs-progs

genfstab -U /mnt >> /mnt/etc/fstab

cp -r /root/archws /mnt/root
cp /root/cryptpart.keyfile /mnt/root

arch-chroot /mnt