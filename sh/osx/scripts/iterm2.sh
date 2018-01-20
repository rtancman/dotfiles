#!/bin/sh

ITERM2_IS_AVAILABLE="$(brew cask list | grep iterm2 2>&1 >/dev/null)"

if [[ ${ITERM2_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][iterm2]${txtrst}" ;

else

    echo -e "${bakcyn}[iterm2] Start Install ${txtrst}";

    brew cask install iterm2

    echo -e "${bakgrn}[iterm2] Finish Install ${txtrst}";

fi
