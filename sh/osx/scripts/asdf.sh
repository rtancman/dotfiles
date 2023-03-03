#!/bin/sh

ASDF_IS_AVAILABLE="$(asdf --version 2>&1 >/dev/null)"

if [[ ${ASDF_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][asdf]${txtrst}" ;

else

    echo -e "${bakcyn}[asdf] Start Install ${txtrst}";

    brew install coreutils curl git gpg gawk asdf

    echo -e "${bakgrn}[asdf] Finish Install ${txtrst}";

fi
