mkfs.ext4 /dev/sda2
mkswap /dev/sda1

mount /dev/sda2 /mnt
swapon /dev/sda1
