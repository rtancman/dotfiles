#!/bin/sh

if [[ -e /usr/bin/vlc ]]; then
    
    echo -e "${bakgrn}[installed][VLC]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[VLC] Start Install ${txtrst}";

    # rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm;
    # dnf install -y vlc;
    rpm -ivh https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
    dnf install -y vlc python-vlc npapi-vlc

    echo -e "${bakgrn}[VLC] Finish Install ${txtrst}";

fi
