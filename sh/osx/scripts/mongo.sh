#!/bin/sh

MONGO_IS_AVAILABLE="$(mongo --version 2>&1 >/dev/null)"

if [[ ${MONGO_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][mongo]${txtrst}" ;

else

    echo -e "${bakcyn}[mongo] Start Install ${txtrst}";

    brew tap mongodb/brew
    brew install mongodb-community@4.2

    echo -e "${bakgrn}[mongo] Finish Install ${txtrst}";

fi
