#!/bin/sh

POSTGRESQL_IS_AVAILABLE="$(postgres --version 2>&1 >/dev/null)"

if [[ ${POSTGRESQL_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][postgresql]${txtrst}" ;
else
    echo -e "${bakcyn}[postgresql] Start Install ${txtrst}";
    brew install postgresql
    echo -e "${bakgrn}[postgresql] Finish Install ${txtrst}";
fi

PGADMIN_IS_AVAILABLE="$(brew list --cask | grep pgadmin4 2>&1 >/dev/null)"

if [[ ${PGADMIN_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][pgadmin4]${txtrst}" ;
else
    echo -e "${bakcyn}[pgadmin4] Start Install ${txtrst}";
    brew install pgadmin4 --cask
    echo -e "${bakgrn}[pgadmin4] Finish Install ${txtrst}";
fi
