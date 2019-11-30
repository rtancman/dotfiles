#!/bin/sh

TELNET_IS_AVAILABLE="$(brew list | grep telnet 2>&1 >/dev/null)"

if [[ ${TELNET_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][telnet]${txtrst}" ;

else

    echo -e "${bakcyn}[redis] Start Install ${txtrst}";

    brew install telnet

    echo -e "${bakgrn}[telnet] Finish Install ${txtrst}";

fi
