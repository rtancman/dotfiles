#!/bin/sh

SQLITE_IS_AVAILABLE="$(dnf list installed | grep sqlite)"

if [[ ${SQLITE_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][sqlite]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[sqlite] Start Install ${txtrst}";

	dnf install -y sqlite sqlite-devel

	echo -e "${bakgrn}[sqlite] Finish Install ${txtrst}";

fi
