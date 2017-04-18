#!/bin/sh

echo -e "${bakcyn}[Tools] Start Install ${txtrst}";

dnf install -y zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel vim-enhanced binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-PAE-devel dkms nscd liveusb-creator gvfs-mtp kio_mtp libmtp simple-mtpfs bash-completion automake kernel-devel cmake python-devel python3-devel
dnf groupinstall -y 'Development Tools'
dnf install -y gcc-c++
dnf install -y redhat-rpm-config
dnf install -y vim


echo -e "${bakgrn}[Tools] Finish Install ${txtrst}";