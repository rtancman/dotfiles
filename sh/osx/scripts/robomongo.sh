#!/bin/sh

ROBOMONGO_IS_AVAILABLE="$(brew list --cask | grep robo-3t)"

if [[ ${ROBOMONGO_IS_AVAILABLE} == 'robo-3t' ]]; then

    echo -e "${bakgrn}[installed][robomongo]${txtrst}" ;

else

    echo -e "${bakcyn}[robomongo] Start Install ${txtrst}";

    brew install robo-3t --cask

    echo -e "${bakgrn}[robomongo] Finish Install ${txtrst}";

fi
