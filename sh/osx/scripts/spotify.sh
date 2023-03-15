#!/bin/sh

SPOTIFY_IS_AVAILABLE="$(brew list --cask | grep spotify)"

if [[ ${SPOTIFY_IS_AVAILABLE} == 'spotify' ]]; then

    echo -e "${bakgrn}[installed][spotify]${txtrst}" ;

else

    echo -e "${bakcyn}[spotify] Start Install ${txtrst}";

    brew install spotify --cask

    echo -e "${bakgrn}[spotify] Finish Install ${txtrst}";

fi
