#!/bin/sh

GVIM_IS_AVAILABLE="$(gvim --version 2>&1 >/dev/null)"

if [[ ${GVIM_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][gvim]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[gvim] Start Install ${txtrst}";

	dnf install -y gvim

	echo -e "${bakgrn}[gvim] Finish Install ${txtrst}";

fi
