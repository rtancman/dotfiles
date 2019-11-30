#!/bin/sh

K9S_IS_AVAILABLE="$(k9s version 2>&1 >/dev/null)"

if [[ ${K9S_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][k9s]${txtrst}" ;

else

    echo -e "${bakcyn}[k9s] Start Install ${txtrst}";

    brew install k9s

    echo -e "${bakgrn}[k9s] Finish Install ${txtrst}";

fi
