#!/bin/sh

GOOGLECHROME_IS_AVAILABLE="$(google-chrome --version 2>&1 >/dev/null)"

if [[ ${GOOGLECHROME_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][google-chrome]${txtrst}" ;

else

    echo -e "${bakcyn}[google-chrome] Start Install ${txtrst}";

    brew cask install google-chrome

    echo -e "${bakgrn}[google-chrome] Finish Install ${txtrst}";

fi
