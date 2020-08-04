#!/bin/sh

R_IS_AVAILABLE="$(r --version 2>&1 >/dev/null)"

if [[ ${R_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][R]${txtrst}" ;

else

    echo -e "${bakcyn}[R] Start Install ${txtrst}";

    brew install r

    echo -e "${bakgrn}[R] Finish Install ${txtrst}";

fi
