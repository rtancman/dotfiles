#!/bin/sh

MKCERT_IS_AVAILABLE="$(brew list | grep mkcert)"

if [[ ${MKCERT_IS_AVAILABLE} == 'mkcert' ]]; then

    echo -e "${bakgrn}[installed][mkcert]${txtrst}" ;

else

    echo -e "${bakcyn}[mkcert] Start Install ${txtrst}";

    brew install mkcert

    echo -e "${bakgrn}[mkcert] Finish Install ${txtrst}";

fi
