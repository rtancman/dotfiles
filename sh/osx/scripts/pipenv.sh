#!/bin/sh

PIPENV_IS_AVAILABLE="$(pipenv --version 2>&1 >/dev/null)"

if [[ ${PIPENV_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][pipenv]${txtrst}" ;
else
    echo -e "${bakcyn}[pipenv] Start Install ${txtrst}";
    brew install pipenv
    echo -e "${bakgrn}[pipenv] Finish Install ${txtrst}";
fi
