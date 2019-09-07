#!/bin/sh

DASH_IS_AVAILABLE="$(brew cask list | grep dash)"

if [[ ${DASH_IS_AVAILABLE} == 'dash' ]]; then

    echo -e "${bakgrn}[installed][dash]${txtrst}" ;

else

    echo -e "${bakcyn}[dash] Start Install ${txtrst}";

    brew cask install dash

    echo -e "${bakgrn}[dash] Finish Install ${txtrst}";

fi
