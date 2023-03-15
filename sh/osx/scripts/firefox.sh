#!/bin/sh

FIREFOX_IS_AVAILABLE="$(brew list --cask | grep firefox)"

if [[ ${FIREFOX_IS_AVAILABLE} == 'firefox' ]]; then

    echo -e "${bakgrn}[installed][firefox]${txtrst}" ;

else

    echo -e "${bakcyn}[firefox] Start Install ${txtrst}";

    brew install firefox --cask

    echo -e "${bakgrn}[firefox] Finish Install ${txtrst}";

fi
