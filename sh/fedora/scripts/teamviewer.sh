#!/bin/sh

echo -e "${bakcyn}[teamviewer] Start Install ${txtrst}";

wget http://download.teamviewer.com/download/teamviewer.i686.rpm ;
dnf install -y teamviewer.i686.rpm ;
rm -rf teamviewer.i686.rpm ;

echo -e "${bakgrn}[teamviewer] Finish Install ${txtrst}";

