pacstrap /mnt - < pkglist.txt

genfstab -U /mnt >> /mnt/etc/fstab

cp postchroot.sh /mnt/root/

arch-chroot /mnt
