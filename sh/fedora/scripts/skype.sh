#!/bin/sh

echo -e "${bakcyn}[Skype] Start Install ${txtrst}";

wget http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm ;
dnf install -y skype-4.3.0.37-fedora.i586.rpm ;
rm -rf skype-4.3.0.37-fedora.i586.rpm ;

echo -e "${bakgrn}[Skype] Finish Install ${txtrst}";

