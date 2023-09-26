#/usr/bin/env bash

mkinitcpio -p linux

cp files/grub /etc/default/
grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=OS
grub-mkconfig -o /boot/grub/grub.cfg