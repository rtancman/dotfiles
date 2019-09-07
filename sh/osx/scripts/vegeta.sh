#!/bin/sh

VEGETA_IS_AVAILABLE="$(vegeta --version 2>&1 >/dev/null)"

if [[ ${VEGETA_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][vegeta]${txtrst}" ;

else

    echo -e "${bakcyn}[vegeta] Start Install ${txtrst}";

    brew install vegeta

    echo -e "${bakgrn}[vegeta] Finish Install ${txtrst}";

fi
