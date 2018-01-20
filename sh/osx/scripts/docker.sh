#!/bin/sh

DOCKER_IS_AVAILABLE="$(docker --version 2>&1 >/dev/null)"

if [[ ${DOCKER_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][docker]${txtrst}" ;

else

    echo -e "${bakcyn}[docker] Start Install ${txtrst}";

    brew cask install docker

    echo -e "${bakgrn}[docker] Finish Install ${txtrst}";

fi
