#!/bin/sh

VIM_IS_AVAILABLE="$(vim --version 2>&1 >/dev/null)"

if [[ ${VIM_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][vim]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[vim] Start Install ${txtrst}";

	dnf install -y vim

	echo -e "${bakgrn}[vim] Finish Install ${txtrst}";

fi
