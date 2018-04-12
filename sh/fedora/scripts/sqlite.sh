#!/bin/sh

SQLITE_IS_AVAILABLE="$(sqlite --version 2>&1 >/dev/null)"

if [[ ${SQLITE_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][sqlite]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[sqlite] Start Install ${txtrst}";

	dnf install -y sqlite sqlite-devel

	echo -e "${bakgrn}[sqlite] Finish Install ${txtrst}";

fi
