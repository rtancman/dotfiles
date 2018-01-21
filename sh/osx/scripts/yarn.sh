#!/bin/sh

YARN_IS_AVAILABLE="$(yarn --version 2>&1 >/dev/null)"

if [[ ${YARN_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][yarn]${txtrst}" ;

else

    echo -e "${bakcyn}[yarn] Start Install ${txtrst}";

    brew install yarn

    echo -e "${bakgrn}[yarn] Finish Install ${txtrst}";

fi
