#/usr/bin/env bash

cd /tmp

sudo -S -u tl git clone https://aur.archlinux.org/yay
cd yay
sudo -S -u tl makepkg -si

# sudo -S -u tl yay -S zram-generator