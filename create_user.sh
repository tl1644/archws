#/usr/bin/env bash

useradd -m -G uucp,wheel,tty,video,libvirt $1
passwd $1
