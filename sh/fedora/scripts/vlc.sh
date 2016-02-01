#!/bin/sh

VLC_IS_AVAILABLE="$(vlc --version 2>&1 >/dev/null)"

if [[ ${VLC_IS_AVAILABLE} =~ 'VLC media player' ]]; then
    
    echo -e "${bakgrn}[installed][VLC]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[VLC] Start Install ${txtrst}";

    rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm;
    dnf install -y vlc;

    echo -e "${bakgrn}[VLC] Finish Install ${txtrst}";

fi
