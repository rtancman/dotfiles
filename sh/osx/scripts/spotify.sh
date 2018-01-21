#!/bin/sh

SPOTIFY_IS_AVAILABLE="$(brew cask list | grep spotify 2>&1 >/dev/null)"

if [[ ${SPOTIFY_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][spotify]${txtrst}" ;

else

    echo -e "${bakcyn}[spotify] Start Install ${txtrst}";

    brew cask install spotify

    echo -e "${bakgrn}[spotify] Finish Install ${txtrst}";

fi
