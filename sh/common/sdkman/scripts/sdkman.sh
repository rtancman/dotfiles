#!/bin/sh

SDKMAN_IS_AVAILABLE="$(sdk --version 2>&1 >/dev/null)"

if [[ ${SDKMAN_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][sdkman]${txtrst}" ;

else

    echo -e "${bakcyn}[sdkman] Start Install ${txtrst}";

    curl -s "https://get.sdkman.io" | bash

    echo -e "${bakgrn}[sdkman] Finish Install ${txtrst}";

fi
