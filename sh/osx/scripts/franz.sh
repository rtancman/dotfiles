#!/bin/sh

FRANZ_IS_AVAILABLE="$(brew cask list | grep franz)"

if [[ ${FRANZ_IS_AVAILABLE} == 'franz' ]]; then

    echo -e "${bakgrn}[installed][franz]${txtrst}" ;

else

    echo -e "${bakcyn}[franz] Start Install ${txtrst}";

    brew cask install franz

    echo -e "${bakgrn}[franz] Finish Install ${txtrst}";

fi
