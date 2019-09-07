#!/bin/sh

WRK_IS_AVAILABLE="$(wrk --version 2>&1 >/dev/null)"

if [[ ${WRK_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][wrk]${txtrst}" ;

else

    echo -e "${bakcyn}[wrk] Start Install ${txtrst}";

    brew install wrk

    echo -e "${bakgrn}[wrk] Finish Install ${txtrst}";

fi
