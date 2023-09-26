#/usr/bin/env bash

mkinitcpio -p linux

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=ArchLinux
cp files/grub /etc/default/
grub-mkconfig -o /boot/grub/grub.cfg