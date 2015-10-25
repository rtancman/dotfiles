#!/bin/sh

echo -e "${bakcyn}[Virtual Box 5.0] Start Install ${txtrst}";

wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo ;
mv virtualbox.repo /etc/yum.repos.d/
yum update -y ;
dnf install -y binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-PAE-devel dkms
dnf install -y VirtualBox-5.0 ;
echo "export KERN_DIR=/usr/src/kernels/`uname -r`" >> /home/rtancman/.bashrc ;
service vboxdrv setup ;

echo -e "${bakgrn}[Virtual Box 5.0] Finish Install ${txtrst}";

