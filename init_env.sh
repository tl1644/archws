#/usr/bin/env bash

# timezone and locale
ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
hwclock --systohc

cat > /etc/locale.gen <<EOF
de_DE.UTF-8 UTF-8
en_US.UTF-8 UTF-8
EOF

locale-gen

echo LANG=en_US.UTF-8 > /etc/locale.conf

# packman
reflector --country DE --latest 5 --sort rate --exclude archlinux.thaller.ws --save /etc/pacman.d/mirrorlist
cp files/pacman.conf /etc
pacman -Syy

# console
echo KEYMAP=de-latin1 > /etc/vconsole.conf

# hostname
echo testro > /etc/hostname
cat > /etc/hosts <<EOF
127.0.0.1   localhost
::1         localhost
127.0.1.1   testro.localdomain   testro
EOF

# btrfs change default for / from 5 to 256
btrfs subvol set-default 256 /

cp files/mkinitcpio.conf /etc/
