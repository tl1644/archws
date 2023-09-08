# archws

## ----- Nach dem booten von der Live CD
loadkeys de-latin1

reflector --country DE --latest 5 --sort rate --save /etc/pacman.d/mirrorlist

nano /etc/pacman.conf
	# misc
	Color
	ParallelDoownloads = 5

timedatectl status

pacman -Syy
pacman -S git

git clone https://github.com/tl1644/archws