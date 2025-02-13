#!/bin/sh

CURSOR_IS_AVAILABLE="$(brew list --cask | grep cursor)"

if [[ ${CURSOR_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][cursor]${txtrst}" ;

else

    echo -e "${bakcyn}[cursor] Start Install ${txtrst}";

    brew install cursor --cask

    echo -e "${bakgrn}[cursor] Finish Install ${txtrst}";

fi
