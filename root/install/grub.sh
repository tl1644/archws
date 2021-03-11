#!/bin/bash

mkdir -p /boot/grub
grub-mkconfig -o /boot/grub/grub.cfg
grub-install --target=i386-pc /dev/sda
