#!/bin/sh

echo -e "${bakcyn}[Tools] Start Install ${txtrst}";

dnf install -y zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel vim-enhanced binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-PAE-devel dkms nscd

echo -e "${bakgrn}[Tools] Finish Install ${txtrst}";