#!/bin/sh

DASH_IS_AVAILABLE="$(brew cask list | grep dash 2>&1 >/dev/null)"

if [[ ${DASH_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][dash]${txtrst}" ;

else

    echo -e "${bakcyn}[dash] Start Install ${txtrst}";

    brew cask install dash

    echo -e "${bakgrn}[dash] Finish Install ${txtrst}";

fi
