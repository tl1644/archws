pacstrap /mnt - < pkglist.txt

genfstab -U /mnt >> /mnt/etc/fstab

cp postchroot.sh /mnt/root/

rm /mnt/etc/hostname
rm /mnt/etc/hosts
rm /mnt/etc/locale.conf
rm /mnt/etc/locale.gen
rm /mnt/etc/vconsole.conf
rm /mnt/install.sh
rm /mnt/README.md
rm /mnt/root/install/install.sh
rm /mnt/root/install/pkglist.txt
rm /mnt/root/install/postchroot.sh
rm /mnt/root/install/prepdisc.sh

arch-chroot /mnt
