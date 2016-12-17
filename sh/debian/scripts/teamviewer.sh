#!/bin/sh

TEAMVIEWER_IS_AVAILABLE="$(teamviewer version 2>&1 >/dev/null)"

if [[ ${TEAMVIEWER_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][teamviewer]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[teamviewer] Start Install ${txtrst}";

    wget https://download.teamviewer.com/download/teamviewer_i386.deb
    dpkg -i teamviewer_i386.deb
    apt-get install -f -y
    rm -rf teamviewer_i386.deb

    echo -e "${bakgrn}[teamviewer] Finish Install ${txtrst}";

fi
