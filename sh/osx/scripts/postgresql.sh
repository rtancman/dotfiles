#!/bin/sh

POSTGRESQL_IS_AVAILABLE="$(brew list | grep postgresql)"

if [[ ${POSTGRESQL_IS_AVAILABLE} == "postgresql@15" ]]; then
    echo -e "${bakgrn}[installed][postgresql]${txtrst}" ;
else
    echo -e "${bakcyn}[postgresql] Start Install ${txtrst}";
    brew install postgresql@15
    echo -e "${bakgrn}[postgresql] Finish Install ${txtrst}";
fi

PGADMIN_IS_AVAILABLE="$(brew list --cask | grep pgadmin4)"

if [[ ${PGADMIN_IS_AVAILABLE} == 'pgadmin4' ]]; then
    echo -e "${bakgrn}[installed][pgadmin4]${txtrst}" ;
else
    echo -e "${bakcyn}[pgadmin4] Start Install ${txtrst}";
    brew install pgadmin4 --cask
    echo -e "${bakgrn}[pgadmin4] Finish Install ${txtrst}";
fi
