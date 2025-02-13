#!/bin/sh

NSS_IS_AVAILABLE="$(brew list | grep nss)"

if [[ ${NSS_IS_AVAILABLE} == 'nss' ]]; then

    echo -e "${bakgrn}[installed][nss]${txtrst}" ;

else

    echo -e "${bakcyn}[nss] Start Install ${txtrst}";

    brew install nss

    echo -e "${bakgrn}[nss] Finish Install ${txtrst}";

fi
