# gentoo-custom
My personal gentoo ebuilds repository.

* To use this repo in your gentoo installation, just put in your "/etc/portage/repos.conf" folder, a file named custom.conf with a following content:

```
[custom]
location = /var/db/repos/custom
sync-type = git
sync-uri = https://github.com/fabioesantos/gentoo-custom.git
auto-sync = yes
```
