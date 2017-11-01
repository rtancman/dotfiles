#!/bin/sh

POSTGRESQLCONTRIB_IS_AVAILABLE="$(psql --version 2>&1 >/dev/null)"

if [[ ${POSTGRESQLCONTRIB_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][postgresql-contrib]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[postgresql-contrib] Start Install ${txtrst}";

	dnf install -y postgresql-contrib

	echo -e "${bakgrn}[postgresql-contrib] Finish Install ${txtrst}";

fi
