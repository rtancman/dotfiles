#!/bin/sh

DIRENV_IS_AVAILABLE="$(direnv version 2>&1 >/dev/null)"

if [[ ${DIRENV_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][direnv]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[direnv] Start Install ${txtrst}";

    dnf install -y direnv

	echo -e "${bakgrn}[direnv] Finish Install ${txtrst}";

fid
