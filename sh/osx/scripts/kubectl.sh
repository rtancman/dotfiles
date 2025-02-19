#!/bin/sh

KUBECTL_IS_AVAILABLE="$(kubectl version 2>&1 >/dev/null)"

if [[ ${KUBECTL_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][kubectl]${txtrst}" ;

else

    echo -e "${bakcyn}[kubectl] Start Install ${txtrst}";

    brew install kubectl

    echo -e "${bakgrn}[kubectl] Finish Install ${txtrst}";

fi
