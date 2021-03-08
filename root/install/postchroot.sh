mkdir /root/sysconfig
git clone --bare https://github.com/tl1644/archws.git /root/sysconfig

function sysconfig {
   /usr/bin/git --git-dir=/root/sysconfig --work-tree=/ $@
}

sysconfig checkout
sysconfig config status.showUntrackedFiles no

ln -sf /usr/share/zoneinfo/Europe/Berlin /etc/localtime
locale-gen

systemctl enable NetworkManager.service

mkinitcpio -p linux

grub-mkconfig -o /boot/grub/grub.cfg
grub-install --target=i386-pc /dev/sda

passwd

