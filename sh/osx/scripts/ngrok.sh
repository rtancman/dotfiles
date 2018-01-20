#!/bin/sh

NGROK_IS_AVAILABLE="$(ngrok --version 2>&1 >/dev/null)"

if [[ ${NGROK_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][ngrok]${txtrst}" ;

else

    echo -e "${bakcyn}[ngrok] Start Install ${txtrst}";

    brew cask install ngrok

    echo -e "${bakgrn}[ngrok] Finish Install ${txtrst}";

fi
