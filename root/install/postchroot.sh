mkdir /root/sysconfig
git clone --bare https://github.com/tl1644/archws.git /root/sysconfig

function sysconfig {
   /usr/bin/git --git-dir=/root/sysconfig --work-tree=/ $@
}

sysconfig checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Deleting pre-existing files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} rm {} 
fi;
sysconfig checkout
sysconfig config status.showUntrackedFiles no
