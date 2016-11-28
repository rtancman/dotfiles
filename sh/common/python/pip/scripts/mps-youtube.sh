#!/bin/sh

MPSYOUTUBE_IS_AVAILABLE="$(mpsyt --version 2>&1 >/dev/null)"

if [[ ${MPSYOUTUBE_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][mps-youtube]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[mps-youtube] Start Install ${txtrst}";

	python3 -m pip install youtube-dl mps-youtube ;

	echo -e "${bakgrn}[mps-youtube] Finish Install ${txtrst}";

fi
