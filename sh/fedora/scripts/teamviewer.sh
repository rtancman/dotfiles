#!/bin/sh

TEAMVIEWER_IS_AVAILABLE="$(teamviewer version 2>&1 >/dev/null)"

if [[ ${TEAMVIEWER_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][teamviewer]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[teamviewer] Start Install ${txtrst}";

    wget http://download.teamviewer.com/download/teamviewer.i686.rpm ;
    dnf install -y teamviewer.i686.rpm ;
    rm -rf teamviewer.i686.rpm ;

    echo -e "${bakgrn}[teamviewer] Finish Install ${txtrst}";

fi
