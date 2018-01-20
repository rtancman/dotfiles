#!/bin/sh

VLC_IS_AVAILABLE="$(vlc --version 2>&1 >/dev/null)"

if [[ ${VLC_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][vlc]${txtrst}" ;

else

    echo -e "${bakcyn}[vlc] Start Install ${txtrst}";

    brew cask install vlc

    echo -e "${bakgrn}[vlc] Finish Install ${txtrst}";

fi
