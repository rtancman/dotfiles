#!/bin/sh

GIT_IS_AVAILABLE="$(git --version 2>&1 >/dev/null)"

if [[ ${GIT_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][Git]${txtrst}" ;

else

    echo -e "${bakcyn}[Git] Start Install ${txtrst}";

    brew install git

    echo -e "${bakgrn}[Git] Finish Install ${txtrst}";

fi
