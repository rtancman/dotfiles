#!/bin/sh
# http://www.if-not-true-then-false.com/2010/install-virtualbox-with-yum-on-fedora-centos-red-hat-rhel/
VIRTUALBOX_IS_AVAILABLE="$(vboxmanage --version 2>&1 >/dev/null)"

if [[ ${VIRTUALBOX_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Virtual Box 5.1]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Virtual Box 5.1] Start Install ${txtrst}";

	wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
	mv virtualbox.repo /etc/yum.repos.d/
	dnf update -y
	dnf install -y VirtualBox-5.1;
	echo "export KERN_DIR=/usr/src/kernels/`uname -r`" >> /home/rtancman/.bashrc
	/usr/lib/virtualbox/vboxdrv.sh setup

	echo -e "${bakgrn}[Virtual Box 5.1] Finish Install ${txtrst}";

fi
