#!/bin/sh

GPG2_IS_AVAILABLE="$(gpg2 --version 2>&1 >/dev/null)"

if [[ ${GPG2_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][gpg2]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[gpg2] Start Install ${txtrst}";

    brew install gpg2

    echo -e "${bakgrn}[gpg2] Finish Install ${txtrst}";

fi
