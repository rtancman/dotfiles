#!/bin/sh

WRK_IS_AVAILABLE="$(wrk -v 2>&1 >/dev/null)"

if [[ ${WRK_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][wrk]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[wrk] Start Install ${txtrst}";

    dnf copr enable getpagespeed/wrk
    dnf install -y wrk

	echo -e "${bakgrn}[wrk] Finish Install ${txtrst}";

fi
