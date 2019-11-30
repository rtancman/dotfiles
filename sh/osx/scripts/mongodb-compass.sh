#!/bin/sh

MONGO_COMPASS_IS_AVAILABLE="$(brew cask list | grep mongodb-compass)"

if [[ ${MONGO_COMPASS_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][mongodb-compass]${txtrst}" ;

else

    echo -e "${bakcyn}[mongodb-compass] Start Install ${txtrst}";

    brew cask install mongodb-compass

    echo -e "${bakgrn}[mongodb-compass] Finish Install ${txtrst}";

fi
