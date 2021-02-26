mkfs.ext4 /dev/sda2
mkswap /dev/sda1

mount /dev/sda2 /mnt
swapon /dev/sda1

pacstrap /mnt base linux linux-firmware

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt
