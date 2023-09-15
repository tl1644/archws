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