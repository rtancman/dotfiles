#!/bin/sh

VIRTUALBOX_IS_AVAILABLE="$(brew list --cask | grep virtualbox)"

if [[ ${VIRTUALBOX_IS_AVAILABLE} == 'virtualbox' ]]; then

    echo -e "${bakgrn}[installed][virtualbox]${txtrst}" ;

else

    echo -e "${bakcyn}[virtualbox] Start Install ${txtrst}";

    brew install --cask virtualbox

    echo -e "${bakgrn}[virtualbox] Finish Install ${txtrst}";

fi
