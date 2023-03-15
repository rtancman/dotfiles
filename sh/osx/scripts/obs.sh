#!/bin/sh

OBS_IS_AVAILABLE="$(brew list --cask | grep obs)"

if [[ ${OBS_IS_AVAILABLE} == 'obs' ]]; then

    echo -e "${bakgrn}[installed][obs]${txtrst}" ;

else

    echo -e "${bakcyn}[obs] Start Install ${txtrst}";

    brew install obs --cask

    echo -e "${bakgrn}[obs] Finish Install ${txtrst}";

fi
