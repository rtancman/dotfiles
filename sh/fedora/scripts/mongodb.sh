#!/bin/sh

MONGO_IS_AVAILABLE="$(dnf list installed | grep mongodb)"

if [[ ${MONGO_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][MongoDB]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[MongoDB] Start Install ${txtrst}";

    dnf install -y mongodb mongodb-server

	echo -e "${bakgrn}[MongoDB] Finish Install ${txtrst}";

fi

