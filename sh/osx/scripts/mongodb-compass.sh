#!/bin/sh

MONGO_COMPASS_IS_AVAILABLE="$(brew list --cask | grep mongodb-compass)"

if [[ ${MONGO_COMPASS_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][mongodb-compass]${txtrst}" ;

else

    echo -e "${bakcyn}[mongodb-compass] Start Install ${txtrst}";

    brew install mongodb-compass --cask

    echo -e "${bakgrn}[mongodb-compass] Finish Install ${txtrst}";

fi
