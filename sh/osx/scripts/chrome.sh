#!/bin/sh

GOOGLECHROME_IS_AVAILABLE="$(brew list --cask | grep google-chrome)"

if [[ ${GOOGLECHROME_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][google-chrome]${txtrst}" ;

else

    echo -e "${bakcyn}[google-chrome] Start Install ${txtrst}";

    brew install google-chrome --cask

    echo -e "${bakgrn}[google-chrome] Finish Install ${txtrst}";

fi
