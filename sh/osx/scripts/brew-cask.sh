#!/bin/sh

BREWCASKROOM_IS_AVAILABLE="$(brew cask --version 2>&1 >/dev/null)"

if [[ ${BREWCASKROOM_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][brew-cask]${txtrst}" ;

else

    echo -e "${bakcyn}[brew-cask] Start Install ${txtrst}";

    brew tap caskroom/cask

    echo -e "${bakgrn}[brew-cask] Finish Install ${txtrst}";

fi
