#!/bin/bash
useradd -m -G uucp,wheel auruser
cd /home/auruser/
sudo -S -u auruser git clone https://aur.archlinux.org/paru.git
cd paru/
sudo -S -u auruser makepkg -si

# Packages
sudo -S -u auruser paru -S leftwm
