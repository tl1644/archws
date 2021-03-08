mkdir /root/sysconfig
git clone --bare https://github.com/tl1644/archws.git /root/sysconfig

function sysconfig {
   /usr/bin/git --git-dir=/root/sysconfig --work-tree=/ $@
}

sysconfig checkout
sysconfig config status.showUntrackedFiles no
