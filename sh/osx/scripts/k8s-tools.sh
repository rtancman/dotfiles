#!/bin/sh

STERN_IS_AVAILABLE="$(stern --version 2>&1 >/dev/null)"

if [[ ${STERN_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][k8s tools][stern]${txtrst}" ;

else

    echo -e "${bakcyn}[k8s tools][stern] Start Install ${txtrst}";

    brew install stern

    echo -e "${bakgrn}[k8s tools][stern] Finish Install ${txtrst}";

fi
