#!/bin/sh

DASH_IS_AVAILABLE="$(brew list --cask | grep dash)"

if [[ ${DASH_IS_AVAILABLE} == 'dash' ]]; then

    echo -e "${bakgrn}[installed][dash]${txtrst}" ;

else

    echo -e "${bakcyn}[dash] Start Install ${txtrst}";

    brew install dash --cask

    echo -e "${bakgrn}[dash] Finish Install ${txtrst}";

fi
