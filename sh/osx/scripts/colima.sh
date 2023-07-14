#!/bin/sh

COLIMA_IS_AVAILABLE="$(colima --version 2>&1 >/dev/null)"

if [[ ${COLIMA_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][colima]${txtrst}" ;

else

    echo -e "${bakcyn}[colima] Start Install ${txtrst}";

    brew install colima

    echo -e "${bakgrn}[colima] Finish Install ${txtrst}";

fi
