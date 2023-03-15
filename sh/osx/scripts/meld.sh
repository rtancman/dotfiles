#!/bin/sh

MELD_IS_AVAILABLE="$(brew list --cask | grep meld)"

if [[ ${MELD_IS_AVAILABLE} == 'meld' ]]; then

    echo -e "${bakgrn}[installed][meld]${txtrst}" ;

else

    echo -e "${bakcyn}[meld] Start Install ${txtrst}";

    brew install --cask meld

    echo -e "${bakgrn}[meld] Finish Install ${txtrst}";

fi
