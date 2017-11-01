#!/bin/sh

PGADMIN3_IS_AVAILABLE="$(pgadmin3 --version 2>&1 >/dev/null)"

if [[ ${PGADMIN3_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][pgadmin3]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[pgadmin3] Start Install ${txtrst}";

	dnf install -y pgadmin3

	echo -e "${bakgrn}[pgadmin3] Finish Install ${txtrst}";

fi
