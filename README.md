# archws

## ----- Nach dem booten von der Live CD

```shell
loadkeys de-latin1
```

```shell
reflector --country DE --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
```

```shell
nano /etc/pacman.conf
	# misc
	Color
	ParallelDoownloads = 5
```

```shell
timedatectl status
```

```shell
pacman -Syy
pacman -S git
```

```shell
git clone https://github.com/tl1644/archws
```

```shell
cd archws
./prep_disk.sh /dev/vda
./prep_disk.sh /dev/nvme0n1p

./create_mount_fs.sh <boot-part> <sys-part>

./base_install.sh

./init_env.sh

./pkg_base.sh
./pkg_net.sh
./pkg_dev.sh
./pkg_gnome.sh
```