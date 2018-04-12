#!/bin/sh

PYTHONDEVEL_IS_AVAILABLE="$(dnf list installed | grep '^python[0-9]-devel')"

if [[ ${PYTHONDEVEL_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][python-devel v2.7 and v3]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[python-devel v2.7 and v3] Start Install ${txtrst}";

	dnf install -y python-devel python3-devel

	echo -e "${bakgrn}[python-devel v2.7 and v3] Finish Install ${txtrst}";

fi
