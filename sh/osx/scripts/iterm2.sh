#!/bin/sh

ITERM2_IS_AVAILABLE="$(brew list --cask | grep iterm2)"

if [[ ${ITERM2_IS_AVAILABLE} == 'iterm2' ]]; then

    echo -e "${bakgrn}[installed][iterm2]${txtrst}" ;

else

    echo -e "${bakcyn}[iterm2] Start Install ${txtrst}";

    brew install iterm2 --cask

    echo -e "${bakgrn}[iterm2] Finish Install ${txtrst}";

fi
